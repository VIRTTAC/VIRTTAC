function [OpenLoopManeuver,EndTime]=VIRTTAC_OpenLoopManeuver_Init(OpenLoopManeuverName,SimConfiguration,Trim_Inputs,Constants)

if ~ischar(OpenLoopManeuverName)
    error('Argument #1 must be a string containing a maneuver name');
end

VIRTTAC.Sim = SimConfiguration;
VIRTTAC.Trim_Inputs = Trim_Inputs;
EndTime = VIRTTAC.Sim.EndTime;% default behavior

% default initialization of the command signals before entering the 
% following sections where various commands are added to these signals 
% with the aim of defining interesting some examplary maneuvers 
OpenLoopManeuver.ElevatorCmd  = [VIRTTAC.Sim.Time',zeros(length(VIRTTAC.Sim.Time),1)];
OpenLoopManeuver.AileronCmd   = [VIRTTAC.Sim.Time',zeros(length(VIRTTAC.Sim.Time),1)];
OpenLoopManeuver.RudderCmd    = [VIRTTAC.Sim.Time',zeros(length(VIRTTAC.Sim.Time),1)];
OpenLoopManeuver.HighLiftCmd  = [VIRTTAC.Sim.Time',ones(length(VIRTTAC.Sim.Time),1)*VIRTTAC.Trim_Inputs.HighLiftConfiguration];
OpenLoopManeuver.ThrottleCmd  = [VIRTTAC.Sim.Time',zeros(length(VIRTTAC.Sim.Time),1)];
OpenLoopManeuver.SpoilerLHCmd.time = VIRTTAC.Sim.Time;
OpenLoopManeuver.SpoilerLHCmd.signals.values = zeros(length(VIRTTAC.Sim.Time),5);
OpenLoopManeuver.SpoilerRHCmd.time = VIRTTAC.Sim.Time;
OpenLoopManeuver.SpoilerRHCmd.signals.values = zeros(length(VIRTTAC.Sim.Time),5);

switch OpenLoopManeuverName
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % NONE  % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

    case 'None'
        OpenLoopManeuver.Type = 4;
        EndTime       = 20.0; % [s]
 

    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % %  ELEVATOR 3-2-1-1 % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
	case 'Elevator 3-2-1-1',
        OpenLoopManeuver.Type = 4;
        EndTime       = 30.0; % [s]
        OpenLoopManeuver.DeflectionAmp = 2 * Constants.deg2rad;
        tmpManeuver = makeMultiStepInput(5, VIRTTAC.Sim.SampleTime, [3 2 1 1], [1 -1 1 -1] * OpenLoopManeuver.DeflectionAmp);
        OpenLoopManeuver.ElevatorCmd(tmpManeuver.Index,2) = tmpManeuver.Values;



    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % RUDDER DOUBLET  % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
	case 'Rudder Doublet'
        OpenLoopManeuver.Type = 2;
        EndTime       = 30.0; % [s]
        OpenLoopManeuver.DeflectionAmp = 10 * Constants.deg2rad;
        tmpManeuver = makeMultiStepInput(5, VIRTTAC.Sim.SampleTime, [1.5 1.5], [1 -1] * OpenLoopManeuver.DeflectionAmp);
        OpenLoopManeuver.RudderCmd(tmpManeuver.Index,2) = tmpManeuver.Values;



    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % AILERON MULTI-STEP  % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
	case 'Aileron Multi-Step'
        OpenLoopManeuver.Type = 3;
        EndTime       = 40.0; % [s]
        OpenLoopManeuver.DeflectionAmp = 5 * Constants.deg2rad;
        tmpManeuver = makeMultiStepInput(5, VIRTTAC.Sim.SampleTime, [2 4.5 3.7 1.2], [1 -1 1 -1] * OpenLoopManeuver.DeflectionAmp);
        OpenLoopManeuver.AileronCmd(tmpManeuver.Index,2) = tmpManeuver.Values;


    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % FLAP TRANSITION % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
	case 'Flap Transition'
        OpenLoopManeuver.Type = 4;
        EndTime       = 150.0; % [s]
        tmpManeuver = makeMultiStepInput(5, VIRTTAC.Sim.SampleTime, 20, -1); % configuration number
        OpenLoopManeuver.HighLiftCmd(tmpManeuver.Index,2) = OpenLoopManeuver.HighLiftCmd(tmpManeuver.Index,2) + tmpManeuver.Values;



    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % THRUST  % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
	case 'Thrust Pulse'
        OpenLoopManeuver.Type = 4;
        EndTime       = 30.0; % [s]
        tmpManeuver = makeMultiStepInput(5, VIRTTAC.Sim.SampleTime, 10, 0.1); % Throttle in range [0,1]
        OpenLoopManeuver.ThrottleCmd(tmpManeuver.Index,2) = OpenLoopManeuver.ThrottleCmd(tmpManeuver.Index,2) + tmpManeuver.Values;


    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % SEQUENTIAL SPOILER DEPLOYMENT % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
	case 'Sequential Spoiler Deployment'
        OpenLoopManeuver.Type = 4;
        EndTime     = 50.0; % [s] 

        OpenLoopManeuver.DeflectionTime = 1.2;
        OpenLoopManeuver.DeflectionAmp = -20;
        OpenLoopManeuver.DeflectionOffset = 6;
        for ii=1:5
            tmp_Maneuver = makeMultiStepInput(4+ii*OpenLoopManeuver.DeflectionTime, VIRTTAC.Sim.SampleTime, [OpenLoopManeuver.DeflectionTime], OpenLoopManeuver.DeflectionAmp * Constants.deg2rad);
            OpenLoopManeuver.SpoilerLHCmd.signals.values(tmp_Maneuver.Index,ii) = OpenLoopManeuver.SpoilerLHCmd.signals.values(tmp_Maneuver.Index,ii)+tmp_Maneuver.Values;
            tmp_Maneuver = makeMultiStepInput(4+OpenLoopManeuver.DeflectionOffset+(ii)*OpenLoopManeuver.DeflectionTime, VIRTTAC.Sim.SampleTime, [OpenLoopManeuver.DeflectionTime], OpenLoopManeuver.DeflectionAmp * Constants.deg2rad);
            OpenLoopManeuver.SpoilerRHCmd.signals.values(tmp_Maneuver.Index,ii) = OpenLoopManeuver.SpoilerRHCmd.signals.values(tmp_Maneuver.Index,ii)+tmp_Maneuver.Values;
        end

    otherwise
        % If we arrive here that means that the maneuver name passed was not
        % recognized => we throw an adequate error message
        error(['The maneuver ''',OpenLoopManeuverName,''' passed to the function ''VIRTTAC_OpenLoopManeuver_Init'' was not recognized.']);

end % end switch

end % end function





% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % % helper function for generating sequences of steps % % % 

function Maneuver = makeMultiStepInput(Starttime, Sampletime, Sequence, Amplitude)


NumSteps = length(Sequence);
LengthManeuver = sum(Sequence);

Maneuver.Time   = Starttime:Sampletime:Starttime+LengthManeuver+Sampletime;
Maneuver.Values = zeros(length(Maneuver.Time),1);

CurrTime = Starttime;

for ii=1:NumSteps
    NumSamples = Sequence(ii)/Sampletime;
    Values = ones(NumSamples,1)*Amplitude(ii);
    Endtime = CurrTime+Sequence(ii);
    index = find((Maneuver.Time>=CurrTime)&(Maneuver.Time<Endtime));
    CurrTime = Endtime;
    Maneuver.Values(index) = Values;
end

Maneuver.Index  = round(Starttime/Sampletime)+(1:length(Maneuver.Values));

end