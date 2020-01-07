function TestPoints = VIRTTAC_InitListOfTestPoints()

Constants = evalin('base','Constants');

TestPoints = [];

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',                 ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Heavy',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',                 ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Medium',                  ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',                 ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        10000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        20000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        220   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        250   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Elevator 3-2-1-1'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Rudder Doublet'         ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Aileron Multi-Step'       ... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point

TestPoints{end+1} = VIRTTAC_CreateTestPointStructure(...
                        30000 * Constants.ft2m,    ... % Baro Altitude [m]
                        280   * Constants.kt2mpers,... % VCAS [m/s]  
                        0     * Constants.deg2rad, ... % Bank angle [rad]
                        'Light',                   ... % Mass category
                        0,                         ... % high-lift [[0..5]]
                        'Gear UP',      ... % Either 'Gear UP' or 'Gear DN'
                        'Sequential Spoiler Deployment'... % Maneuver name
                    );
TestPoints{end+1} = TestPoints{end}; % repeat same test point
TestPoints{end+1} = TestPoints{end}; % repeat same test point



end
                      
