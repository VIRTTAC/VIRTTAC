function TestPoint = VIRTTAC_CreateTestPointStructure(...
                                                        BaroAltitude,         ... % Baro Altitude [m]
                                                        VCAS,                 ... % VCAS [m/s]  
                                                        Phi,                  ... % Bank angle [rad]
                                                        MassCategory,         ... % Mass category
                                                        HighLiftConfiguration,... % [[0..5]]
                                                        LandingGear,          ... % Either 'Gear UP' or 'Gear DN'
                                                        ManeuverName          ... % Maneuver name
                                                    )
%                         10000 * Constants.ft2m,    ... % Baro Altitude [m]
%                         250   * Constants.kt2mpers,... % VCAS [m/s]  
%                         0     * Constants.deg2rad, ... % Bank angle [rad]
%                         'Light',                   ... % Mass category
%                         0,                         ... % high-lift [[0..5]]
%                         'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
%                         'Elevator 3-2-1-1'         ... % Maneuver name
TestPoint.Trim_Point.Phi  = Phi;
TestPoint.Trim_Point.VCAS = VCAS;
TestPoint.Trim_Point.Altitude = BaroAltitude;
% the new 3 values (lat, long, heading) are taken randomly
TestPoint.Trim_Point.Psi = 2*pi*rand(); % uniformly random flight direction
    % This gives a location roughly at the restricted area over the
    % North-East Germany (currently location has no impact on VIRTTAC-Castor)
TestPoint.Trim_Point.Latitude  = (53 + rand()) * pi/180;
TestPoint.Trim_Point.Longitude = (12 + rand()) * pi/180;
TestPoint.Trim_Point.TrimSuccessCode = -1;
% if (TestPoint.Trim_Point.Phi==0)
%     TestPoint.Trim_Point.TrimCondition = 1;
% else
%     TestPoint.Trim_Point.TrimCondition = 2;
% end
TestPoint.Trim_Point.TrimRawData = '';


switch MassCategory
    case 'Light'
        TestPoint.WeightBalance.FuelConfig = 1;
    case 'Medium'
        TestPoint.WeightBalance.FuelConfig = 2;
    case 'Heavy'
        TestPoint.WeightBalance.FuelConfig = 3;
    otherwise
        error('Unrecognized mass category: allowed mass categories are ''Light'', ''Medium'', and ''Heavy''. Please check your test poin configuration!')
end


TestPoint.Trim_Inputs.HighLiftConfiguration = HighLiftConfiguration; % Flaps 0 (clean) to 5 (full flaps)
switch LandingGear
    case 'Gear UP'
        TestPoint.Trim_Inputs.GearExtension         = 0; % up [0], down [1] (no gear model included in the model so far)
    case 'Gear DN'
        TestPoint.Trim_Inputs.GearExtension         = 1; % up [0], down [1] (no gear model included in the model so far)
    otherwise
        error('Unrecognized landing position: allowed gear positions are ''Gear UP'' and ''Gear DN''. Please check your test poin configuration!')
end


TestPoint.OpenLoopManeuverName = ManeuverName;



end