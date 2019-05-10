# VIRTTAC-Castor s-function Input Output Interfaces

VIRTTAC-Castor is meant to be used with the nice features provided by the MATLAB/Simulink environment and the provided Simulink models. An output bus is created just after the model s-function and provide an easy way for the users to select some measurements and do something with them, for instance take those signals as inputs for a controller which act on some of the control surfaces.

We do not recommend to work and interact with VIRTTAC at a lower level, because this is more error-prone and this might cause issues later when updating to a newer version). This said, since we do not want to prevent users from doing that either, you will find hereafter the list of all input and output signals that are being exchanged between the VIRTTAC-Castor model s-function and Simulink.



##### Inputs

To interact with VIRTTAC-Castor, the s-function expects a input vector containing the following 27 inputs signals.

*Primary Control Commands*

- input( 1): Elevator_LH_cmd [rad]
- input( 2): Elevator_RH_cmd [rad]
- input( 3): HorizStabil_cmd [rad]
- input( 4): Aileron_LH_cmd [rad]
- input( 5): Aileron_RH_cmd [rad]
- input( 6): Rudder_cmd [rad]

*Secondary Control Commands*

- input( 7): Spoiler_LH1_cmd [rad]
- input( 8): Spoiler_LH2_cmd [rad]
- input( 9): Spoiler_LH3_cmd [rad]
- input(10): Spoiler_LH4_cmd [rad]
- input(11): Spoiler_LH5_cmd [rad]
- input(12): Spoiler_RH1_cmd [rad]
- input(13): Spoiler_RH2_cmd [rad]
- input(14): Spoiler_RH3_cmd [rad]
- input(15): Spoiler_RH4_cmd [rad]
- input(16): Spoiler_RH5_cmd [rad]

*Aircraft Configuration Commands*

- input(17): Flap_cmd [ADM]
- input(18): Gear_cmd [ADM] -> note that no gear model is included in version 0.5-alpha

*Engine Commands*

- input(19): N1_LH_cmd [ADM]
- input(20): N1_RH_cmd [ADM]

*Atmospheric Data*

- input(21): WindNED_x [m/s]
- input(22): WindNED_y [m/s]
- input(23): WindNED_z [m/s]
- input(24): T_stat_offset [k]
- input(25): p_stat_offset [N/m2]

*Failure Cases*

- input(26): WingIceFlag [ADM]
- input(27): TailIceFlag [ADM]





#### Outputs

The following 65 sensor measurement are available as output of the VIRTTAC-Castor model as a bus with the names provided hereafter. This bus is created inside the VIRTTAC-Castor mask based on the vector of 65 elements coming out from the model s-function.

###### Inertial reference Units

*IRU 1*

- output(1): ax_IRU1 [g]

- output(2): ay_IRU1 [g]

- output(3): az_IRU1 [g]

- output(4): p_IRU1 [rad/s]

- output(5): q_IRU1 [rad/s]

- output(6): r_IRU1 [rad/s]

- output(7): phi_IRU1 [rad]

- output(8): theta_IRU1 [rad]

- output(9): psi_IRU1 [rad]

*IRU 2*

- output(10): ax_IRU2 [g]

- output(11): ay_IRU2 [g]

- output(12): az_IRU2 [g]

- output(13): p_IRU2 [rad/s]

- output(14): q_IRU2 [rad/s]

- output(15): r_IRU2 [rad/s]

- output(16): phi_IRU2 [rad]

- output(17): theta_IRU2 [rad]

- output(18): psi_IRU2 [rad]

*IRU 3*

- output(19): ax_IRU3 [g]

- output(20): ay_IRU3 [g]

- output(21): az_IRU3 [g]

- output(22): p_IRU3 [rad/s]

- output(23): q_IRU3 [rad/s]

- output(24): r_IRU3 [rad/s]

- output(25): phi_IRU3 [rad]

- output(26): theta_IRU3 [rad]

- output(27): psi_IRU3 [rad]



###### Air Data System Probe

*ADSP 1*

- output(28): VCAS_ADSP1 [m/s]

- output(29): alpha_ADSP1 [rad]

- output(30): beta_ADSP1 [rad]

*ADSP 2*

- output(31): VCAS_ADSP2 [m/s]

- output(32): alpha_ADSP2 [rad]

- output(33): beta_ADSP2 [rad]

*ADSP 3*

- output(34): VCAS_ADSP3 [m/s]

- output(35): alpha_ADSP3 [rad]

- output(36): beta_ADSP3 [rad]

*ADSP 4*

- output(37): VCAS_ADSP4 [m/s]

- output(38): alpha_ADSP4 [rad]

- output(39): beta_ADSP4 [rad]



###### Environment Measurements

*Temperature / Pressure*

- output(40): T_TStat1 [K]

- output(41): p_pStat1 [Pa]

- output(42): H_pStat1 [m]



###### Engines

- output(43): N1_LH_Sen [ADM]

- output(44): N1_RH_Sen [ADM]



###### Control Surface Deflections

- output(45): Elevator_LH [rad]

- output(46): Elevator_RH [rad]

- output(47): Aileron_LH [rad]

- output(48): Aileron_RH [rad]

- output(49): Rudder [rad]

- output(50): HorizStabil [rad]

- output(51): Flap_LH [rad]

- output(52): Flap_RH [rad]

- output(53): Spoiler_LH1_meas [rad]

- output(54): Spoiler_LH2_meas [rad]

- output(55): Spoiler_LH3_meas [rad]

- output(56): Spoiler_LH4_meas [rad]

- output(57): Spoiler_LH5_meas [rad]

- output(58): Spoiler_RH1_meas [rad]

- output(59): Spoiler_RH2_meas [rad]

- output(60): Spoiler_RH3_meas [rad]

- output(61): Spoiler_RH4_meas [rad]

- output(62): Spoiler_RH5_meas [rad]



###### GPS

- output(63): latitude_GPS [rad]

- output(64): longitude_GPS [rad]

- output(65): H_GPS [m]
