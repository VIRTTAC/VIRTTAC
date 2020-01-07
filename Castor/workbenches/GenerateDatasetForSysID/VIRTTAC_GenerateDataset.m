% Name:    VIRTTAC_GenerateDataset.m
% Type:    MATLAB script
% Purpose: Provide an example for generating a dataset for system 
%          idenfication purposes
%  
%   Initializes VIRTTAC, call a external script for defining the flight 
%   points and maneuvers to be inlcuded, perform the simulations for each
%   maneuver and save the results in a structured way
% 
% License: MIT

clc;

%% Setting up and initializing the VIRTTAC model
% Set path
VIRTTAC_SetPath(); % use true or 1 to disable version-related warnings 

% default initialization of VIRTTAC structure
% Do not change the initialization of VIRTTAC struct in "VIRTTAC_DefaultInit.m"!
VIRTTAC_DefaultInit;

%% Selection of flight points and maneuvers
% Note that for readability purposes (of the script) and to prevent 
% constant changes of this script, the flight points and maneuver 
% definitions are set in one or several external scripts

VIRTTAC_ListOfTestPoints = VIRTTAC_InitListOfTestPoints();

ProgressInformation = [];
ProgressInformation.startDate = now();
[y, m, d, h, mn, s] = datevec(ProgressInformation.startDate);

if ~exist('datasets','dir')
    mkdir('datasets');
end
directoryName = [sprintf('%4d',y),'_',sprintf('%02d',m),'_',sprintf('%02d',d),'_',sprintf('%02d',h),'h',sprintf('%02d',mn),'m',sprintf('%02d',floor(s)),'s'];
clear('y','m','d','h','mn','s');
if ~exist(['datasets',filesep,directoryName],'dir')
    mkdir(['datasets',filesep,directoryName]);
end

% In order to be able to have a good indication for the overall progress
% of the dataset generation, we first need to get an overview on all tasks 
% to be made
ProgressInformation.totalDurationOfTheSimulations = 0;
for ii=1:length(VIRTTAC_ListOfTestPoints)
    tmp_CurrentTestPoint = VIRTTAC_ListOfTestPoints{ii};
    tmpManeuverName = VIRTTAC_ListOfTestPoints{ii}.OpenLoopManeuverName;
    [tmpManeuver,tmp_Sim_EndTime] = VIRTTAC_OpenLoopManeuver_Init(tmpManeuverName,VIRTTAC.Sim,VIRTTAC.Trim_Inputs,Constants);
    ProgressInformation.totalDurationOfTheSimulations = ProgressInformation.totalDurationOfTheSimulations + tmp_Sim_EndTime;
end
clear('tmp_CurrentTestPoint','tmp_Sim_EndTime');

ProgressInformation.statusString = ['Starting dataset generation with ',...
                          VIRTTAC.model_name, ' ',VIRTTAC.version,'...\n'];
fprintf([ProgressInformation.statusString,'\n']);
ProgressInformation.statusString = [];
ProgressInformation.durationOfThePerformedSimulations = 0;
for ii=1:length(VIRTTAC_ListOfTestPoints)
    % select a new test point
    VIRTTAC.CurrentTestPoint = VIRTTAC_ListOfTestPoints{ii};
    
    % display some progress information for the user
    ProgressInformation.currentDate = now();
    ProgressInformation.deltaSinceStartInSec = (ProgressInformation.currentDate-ProgressInformation.startDate)*24*3600;
    ProgressInformation.estimatedRemainingTimeInSec = ProgressInformation.totalDurationOfTheSimulations/max(ProgressInformation.durationOfThePerformedSimulations,1e-1) * ProgressInformation.deltaSinceStartInSec - ProgressInformation.deltaSinceStartInSec;
    ProgressInformation.lengthPreviousStatusString = length(ProgressInformation.statusString);
    ProgressInformation.statusString = sprintf('Performing simulation %d of %d - Estimated remaining time: %d seconds\n',ii,length(VIRTTAC_ListOfTestPoints),round(ProgressInformation.estimatedRemainingTimeInSec));
    % % The next line can be used to "erase" the previous message and keep
    % % a fairly clean console (commented by default as it might interact
    % % badly with printouts or other error messages) 
    % fprintf(repmat('\b', 1, ProgressInformation.lengthPreviousStatusString));
    fprintf(ProgressInformation.statusString);
    
    % first the aircraft is "trimmed" for the current test point
    % for this default values for all variables must be defined
    % (including model inputs / maneuvers)
    VIRTTAC_DefaultInit;
    VIRTTAC.Trim_Point = VIRTTAC.CurrentTestPoint.Trim_Point;
    VIRTTAC.WeightBalance.FuelConfig = VIRTTAC.CurrentTestPoint.WeightBalance.FuelConfig;
    % then we trim
    tic;
    VIRTTAC.Sim.Trimming = 1;
    [VIRTTAC.Trim.t,VIRTTAC.Trim.x,VIRTTAC.Trim.y] = sim('VIRTTAC_Model');
    clear sfunc_VIRTTAC_Castor;

    VIRTTAC.Sim.Trimming = 0;
    VIRTTAC.Trim.ElapsedTime = toc;
    % 
    if (VIRTTAC.Trim_Point.TrimSuccessCode >= 0),
        tmpManeuverName = VIRTTAC_ListOfTestPoints{ii}.OpenLoopManeuverName;
        [tmpManeuver,VIRTTAC.Sim.EndTime] = VIRTTAC_OpenLoopManeuver_Init(tmpManeuverName,VIRTTAC.Sim,VIRTTAC.Trim_Inputs,Constants);
        VIRTTAC.OpenLoopManeuver = tmpManeuver;
        VIRTTAC.OpenLoopManeuver.SelectedManeuverName = tmpManeuverName;
        clear('tmpManeuver','tmpManeuverName');
        %% Run the open loop simulation
        tic;
        [VIRTTAC.Sim.t,VIRTTAC.Sim.x,VIRTTAC.Sim.y] = sim('VIRTTAC_Model');
        clear sfunc_VIRTTAC_Castor;
        VIRTTAC.Sim.ElapsedTime = toc;
        VIRTTAC.Sim.SpeedUpFactor = (VIRTTAC_SimDataOutputs.time(end) - VIRTTAC_SimDataOutputs.time(1))/VIRTTAC.Sim.ElapsedTime;
    else
        % Note: only throw a warning here to prevent the process from
        % stopping completly just because one of the selected initial
        % conditions could not be satisfied
        warning('Error was detected during the model trim: simulation was skipped!');
        ProgressInformation.statusString = []; % this prevents from erasing the warning
    end
    ProgressInformation.durationOfThePerformedSimulations = ProgressInformation.durationOfThePerformedSimulations + VIRTTAC.Sim.EndTime;
        
    % regardless whether
    % Assemble the simulation data into the VIRTTAC.SimData structure
    VIRTTAC_DataGathering;
    save(['datasets',filesep,directoryName,filesep,'TestPoint_',num2str(ii)], 'VIRTTAC', 'VIRTTAC_SimData','Constants');
end
ProgressInformation.endDate = now();
fprintf('\nDataset generation completed in %f seconds.\n',(ProgressInformation.endDate-ProgressInformation.startDate)*24*3600);
clear('ii','VIRTTAC_ListOfTestPoints','directoryName','ProgressInformation');

    