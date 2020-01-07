% Name:    VIRTTAC_run.m
% Type:    MATLAB script
% Purpose: Provide an example for running an open loop simulation
%  
%   Initializes VIRTTAC, trims it, run a simulation, produce a standard
%   plot of the results and exports it as PDF
% 
% License: MIT

clc;

%% Setting up and initializing the VIRTTAC model
% Set path
VIRTTAC_SetPath(); % use true or 1 to disable version-related warnings 

% default initialization of VIRTTAC structure
% Do not change the initialization of VIRTTAC struct in "VIRTTAC_DefaultInit.m"!
VIRTTAC_DefaultInit;

[VIRTTAC.model_name,VIRTTAC.version]=VIRTTAC_GetModelNameAndCurrentVersion();
disp(sprintf(['\nStarting open loop simulation with ',...
              VIRTTAC.model_name, ' ',VIRTTAC.version,'\n']));

%% Definition of trim point for model simulation
% Do not change the initialization of VIRTTAC struct in "VIRTTAC_DefaultInit.m"!
% The defintion of the flight condition and aircraft configuration should go hereafter 
% before starting the trimming. Further also the definition of the failure cases should
% be done hereafter in the run-script.

% Definition of the flight point at which the aircraft will be trimmed
VIRTTAC.Trim_Point.Altitude  = 10000 * Constants.ft2m;      % [m]
VIRTTAC.Trim_Point.VCAS      = 280   * Constants.kt2mpers;  % [m/s]
VIRTTAC.Trim_Point.Phi       = 0    * Constants.deg2rad;   % [deg] - bank angle
VIRTTAC.Trim_Point.Psi       = 60    * Constants.deg2rad;   % [rad] - heading
VIRTTAC.Trim_Point.Latitude  = 53    * Constants.deg2rad;   % [rad]
VIRTTAC.Trim_Point.Longitude = -3    * Constants.deg2rad;   % [rad]


% Weight and Balance Parameters
VIRTTAC.WeightBalance.PayloadPax  = 8000.0; % [kg]
VIRTTAC.WeightBalance.PayloadCG   = [VIRTTAC.Geometry.x_ref_25,0.0,0.0]; % vector in body ref. coordinates [m,m,m]

VIRTTAC.WeightBalance.FuelConfig  = 3; % [0] minimum fuel qantity
                                       % [1] low fuel qantity
                                       % [2] medium fuel qantity
                                       % [3] maximum fuel qantity
% Aircraft Configuration
VIRTTAC.Trim_Inputs.HighLiftConfiguration = 0; % Flaps 0 (clean) to 5 (full flaps)
VIRTTAC.Trim_Inputs.GearExtension         = 0; % up [0], down [1] (no gear model included in the model so far)
% atmospheric values
VIRTTAC.Atmosphere.WindNED       = zeros(3,1);
VIRTTAC.Atmosphere.T_stat_offset = 0.0;
VIRTTAC.Atmosphere.p_stat_offset = 0.0;
% flags for the icing scenario
VIRTTAC.ErrorCase.WingIce   = 0; % [0] off, [1] on
VIRTTAC.ErrorCase.TailIce   = 0; % [0] off, [1] on

          
%% Trimming of VIRTTAC model
% Performing a slightly imperfect trim at the flight condition defined 
% under VIRTTAC.Trim_Point
tic;
VIRTTAC.Sim.Trimming = 1;
[VIRTTAC.Trim.t,VIRTTAC.Trim.x,VIRTTAC.Trim.y] = sim('VIRTTAC_Model');
clear sfunc_VIRTTAC_Castor;
VIRTTAC.Sim.Trimming = 0;
VIRTTAC.Trim.ElapsedTime = toc;

if (VIRTTAC.Trim_Point.TrimSuccessCode >= 0),
    disp(['Time required for loading and trimming the model: ',...
          num2str(VIRTTAC.Trim.ElapsedTime),' s.',]);
else
    error('Error was detected during the model trim, stopping execution!');
end


%% Define/Choose Open-Loop Maneuver

VIRTTAC.OpenLoopManeuver.Names = {  'None'                         ;... % 1
                                    'Elevator 3-2-1-1'             ;... % 2
                                    'Elevator 1-1-2-3'             ;... % 3
                                    'Rudder Doublet'               ;... % 4
                                    'Aileron Multi-Step'           ;... % 5
                                    'Flap Transition'              ;... % 6
                                    'Thrust Pulse'                 ;... % 7
                                    'Sequential Spoiler Deployment';... % 8
                                    'Roeser_DLRK2018'              ;... % 9 
                                    'Roeser_DLRK2019'              ;... % 10
                                 };
% In order to mitigate the risks of typos, the maneuver is selected at the next line
% via its index in the list that was just defined. The 'VIRTTAC_OpenLoopManeuver_Init' 
% expects the maneuver name as a string and could of course be called directly.
tmpManeuverName = VIRTTAC.OpenLoopManeuver.Names{8};
disp(strcat('Selected maneuver: ''',tmpManeuverName,''''));
[tmpManeuver,VIRTTAC.Sim.EndTime] = VIRTTAC_OpenLoopManeuver_Init(tmpManeuverName,VIRTTAC.Sim,VIRTTAC.Trim_Inputs,Constants);

tmpManeuver.Names = VIRTTAC.OpenLoopManeuver.Names;
VIRTTAC.OpenLoopManeuver = tmpManeuver;
VIRTTAC.OpenLoopManeuver.SelectedManeuverName = tmpManeuverName;
clear('tmpManeuver','tmpManeuverName');



%% Run the open loop simulation

tic;
[VIRTTAC.Sim.t,VIRTTAC.Sim.x,VIRTTAC.Sim.y] = sim('VIRTTAC_Model');
VIRTTAC.Sim.ElapsedTime = toc;
VIRTTAC.Sim.SpeedUpFactor = (VIRTTAC_SimDataOutputs.time(end) - VIRTTAC_SimDataOutputs.time(1))/VIRTTAC.Sim.ElapsedTime;

disp(['Time required for performing a ',...
      num2str(VIRTTAC.Sim.EndTime - VIRTTAC.Sim.StartTime),...
      ' s simulation: ',num2str(VIRTTAC.Sim.ElapsedTime),' s.']);
if (VIRTTAC.Sim.SpeedUpFactor>=1)
    disp(['Simulation speed was ',num2str(VIRTTAC.Sim.SpeedUpFactor),...
          ' times faster than real time.']);
else
    disp(['Simulation speed was ',num2str(1/VIRTTAC.Sim.SpeedUpFactor),...
          ' times slower than real time!']);
end

% Assemble the simulation data into the VIRTTAC.SimData structure
VIRTTAC_DataGathering;

%% Plot simulation results


% % define some properties for the plots
VIRTTAC_PlotProperties.fontName      = 'Helvetica';
VIRTTAC_PlotProperties.fontSize      = 11;
VIRTTAC_PlotProperties.fontSizeTitle = VIRTTAC_PlotProperties.fontSize + 9;
VIRTTAC_PlotProperties.RefLineWidth  = 1.5;
VIRTTAC_PlotProperties.ScalingFactor = 1.0;

% % this function call generates the VIRTTAC "envelope plot"
EnvPlot_handle = VIRTTAC_Plot_FlightData2Envelope(21 ...% figure number
                                  ,VIRTTAC_SimData,VIRTTAC_PlotProperties,Constants);
   
% this function call generates the VIRTTAC "standard output plot"
stdPlot_handle = VIRTTAC_Plot_Standard_Inputs_Outputs(22 ...% figure number
                                  ,VIRTTAC_SimData,VIRTTAC_PlotProperties);
% 
% % export that plot to a landscape PDF file
set(stdPlot_handle,...
      'PaperOrientation', 'portrait', ...
      'PaperSize', VIRTTAC_PlotProperties.ScalingFactor*2.8*[16 9],...
      'Units' , 'centimeters',...
      'PaperPosition',VIRTTAC_PlotProperties.ScalingFactor*2.8*[0,0,16,9]);
%print(stdPlot_handle,'VIRTTAC_Std_InputOutput_Plot.pdf','-dpdf');
% 
% After exporting the figure, we need to ensure that the size set for the 
% figure fit into the screen. Indeed, a rather large figure size has been 
% used above, which ensures the reproductibility of the plot export - 
% regardless of the actual screen size - but this might put the window out 
% of reach on small screens.
% => The formula below leads to resize the height and width of the window 
% to 80% of those of the display, at places the lower-left corner of the 
% window at 10% of the screen size above and right of the lower-left corner 
% of the screen (i.e. the window is centered on the screen).

% set(stdPlot_handle,'Units','pixels','Position',...
%     round([0.1*([0 0 1 0;0 0 0 1] *get(0, 'Screensize')')' 0 0]...
%                      + [1 1 .8 .8].*get(0, 'Screensize')));

