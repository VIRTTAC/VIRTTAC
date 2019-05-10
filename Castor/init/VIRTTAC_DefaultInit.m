

Constants.deg2rad  = pi/180.0;
Constants.rad2deg  = 180.0/pi;
Constants.ft2m     = 0.3048;
Constants.kt2mpers = 1852/3600; 

% Definition of the sFunction output vector for DataGathering
% this definition is specific to each aircraft:
% here the definition for VIRTTAC-Castor is always loaded as this model
% is currently the only available model of the VIRTTAC family
% => later flags will be required to select the right definition
InterfaceDefinition  = load('VIRTTAC_Castor_sFunctionInputOutputDefintion');
VIRTTAC.OutputInterface.Index = InterfaceDefinition.OutputIndex;
VIRTTAC.InputInterface.Index  = InterfaceDefinition.InputIndex;

% Setting default trim inputs which is required for
% evaluating the model and is used as starting point 
% of the trim algorithm
% These values will be overwritten with the actual trim 
% values when the aircraft will be trimmed
VIRTTAC.Trim_Inputs.Elevator_LH_Cmd          = 0.0;
VIRTTAC.Trim_Inputs.Elevator_RH_Cmd          = 0.0;
VIRTTAC.Trim_Inputs.HorizontalStabilizer_Cmd = 0.0;
VIRTTAC.Trim_Inputs.Aileron_LH_Cmd           = 0.0;
VIRTTAC.Trim_Inputs.Aileron_RH_Cmd           = 0.0;
VIRTTAC.Trim_Inputs.Rudder_Cmd               = 0.0;

VIRTTAC.Trim_Inputs.Spoiler1_LH_Cmd = 0.0;
VIRTTAC.Trim_Inputs.Spoiler2_LH_Cmd = 0.0;
VIRTTAC.Trim_Inputs.Spoiler3_LH_Cmd = 0.0;
VIRTTAC.Trim_Inputs.Spoiler4_LH_Cmd = 0.0;
VIRTTAC.Trim_Inputs.Spoiler5_LH_Cmd = 0.0;
VIRTTAC.Trim_Inputs.Spoiler1_RH_Cmd = 0.0;
VIRTTAC.Trim_Inputs.Spoiler2_RH_Cmd = 0.0;
VIRTTAC.Trim_Inputs.Spoiler3_RH_Cmd = 0.0;
VIRTTAC.Trim_Inputs.Spoiler4_RH_Cmd = 0.0;
VIRTTAC.Trim_Inputs.Spoiler5_RH_Cmd = 0.0;

VIRTTAC.Trim_Inputs.HighLiftConfiguration = 0; % Flaps 0 (clean) to 5 (full flaps)
VIRTTAC.Trim_Inputs.GearExtension         = 0; % up [0], down [1] (no gear model included in the model so far)

VIRTTAC.Trim_Inputs.N1_LH_Cmd = 0.0;
VIRTTAC.Trim_Inputs.N1_RH_Cmd = 0.0;

% Definition of the flight point at which the aircraft
% will be trimmed
VIRTTAC.Trim_Point.Altitude  = 15000 * Constants.ft2m;      %[m]
VIRTTAC.Trim_Point.VCAS      = 280   * Constants.kt2mpers;  % [m/s]
VIRTTAC.Trim_Point.Phi       = 0     * Constants.deg2rad;   % [deg]
VIRTTAC.Trim_Point.Psi       = 60    * Constants.deg2rad;   % [rad]
VIRTTAC.Trim_Point.Latitude  = 53    * Constants.deg2rad;   % [rad]
VIRTTAC.Trim_Point.Longitude = -3    * Constants.deg2rad;   % [rad]

% Default atmospheric values
VIRTTAC.Atmosphere.WindNED       = zeros(3,1);
VIRTTAC.Atmosphere.T_stat_offset = 0.0;
VIRTTAC.Atmosphere.p_stat_offset = 0.0;

% Default flags for the icing scenario
VIRTTAC.ErrorCase.WingIce   = 0; % [0] off, [1] on
VIRTTAC.ErrorCase.TailIce   = 0; % [0] off, [1] on


% Weight and Balance Parameters
VIRTTAC.WeightBalance.FuelOnBoard = 1000.0; % [kg]
VIRTTAC.WeightBalance.PayloadPax  = 8000.0; % [kg]

% Sim configuration
VIRTTAC.Sim.SampleTime  = 0.01;
VIRTTAC.Sim.StartTime   = 0.00;
VIRTTAC.Sim.EndTime     = 600.0;

VIRTTAC.Sim.Time = VIRTTAC.Sim.StartTime:VIRTTAC.Sim.SampleTime:VIRTTAC.Sim.EndTime;


% Default values for the 'Maneuver' structure
% Remark 1: required to be able to execute the model
% Remark 2: no maneuver (all 0) => for maneuver init please refer
%           to the "VIRTTAC_Maneuver_Init" function
VIRTTAC.OpenLoopManeuver.ElevatorCmd  = [VIRTTAC.Sim.Time',zeros(length(VIRTTAC.Sim.Time),1)];
VIRTTAC.OpenLoopManeuver.AileronCmd   = [VIRTTAC.Sim.Time',zeros(length(VIRTTAC.Sim.Time),1)];
VIRTTAC.OpenLoopManeuver.RudderCmd    = [VIRTTAC.Sim.Time',zeros(length(VIRTTAC.Sim.Time),1)];
VIRTTAC.OpenLoopManeuver.HighLiftCmd  = [VIRTTAC.Sim.Time',ones(length(VIRTTAC.Sim.Time),1)*VIRTTAC.Trim_Inputs.HighLiftConfiguration];
VIRTTAC.OpenLoopManeuver.ThrottleCmd  = [VIRTTAC.Sim.Time',zeros(length(VIRTTAC.Sim.Time),1)];
VIRTTAC.OpenLoopManeuver.SpoilerLHCmd.time = VIRTTAC.Sim.Time;
VIRTTAC.OpenLoopManeuver.SpoilerLHCmd.signals.values = zeros(length(VIRTTAC.Sim.Time),5);
VIRTTAC.OpenLoopManeuver.SpoilerRHCmd.time = VIRTTAC.Sim.Time;
VIRTTAC.OpenLoopManeuver.SpoilerRHCmd.signals.values = zeros(length(VIRTTAC.Sim.Time),5);

