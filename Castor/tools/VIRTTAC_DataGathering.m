% Comment: Do note change the indices of the simulation output data assignment. If required only append this file for additional assignments from further Simulink output blocks.

%% Data Gathering

% Model Output
AC_Outputs.Time    = VIRTTAC_SimDataOutputs.time;

AC_Outputs.ax_IRU1_g        = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.ax_IRU1_g);
AC_Outputs.ay_IRU1_g        = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.ay_IRU1_g);
AC_Outputs.az_IRU1_g        = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.az_IRU1_g);
AC_Outputs.p_IRU1_deg_per_s = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.p_IRU1_rads)   * Constants.rad2deg;
AC_Outputs.q_IRU1_deg_per_s = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.q_IRU1_rads)   * Constants.rad2deg;
AC_Outputs.r_IRU1_deg_per_s = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.r_IRU1_rads)   * Constants.rad2deg;
AC_Outputs.phi_IRU1_deg     = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.phi_IRU1_rad)  * Constants.rad2deg;
AC_Outputs.theta_IRU1_deg   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.theta_IRU1_rad)* Constants.rad2deg;
AC_Outputs.psi_IRU1_deg     = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.psi_IRU1_rad)  * Constants.rad2deg;

AC_Outputs.ax_IRU2_g        = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.ax_IRU2_g);
AC_Outputs.ay_IRU2_g        = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.ay_IRU2_g);
AC_Outputs.az_IRU2_g        = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.az_IRU2_g);
AC_Outputs.p_IRU2_deg_per_s = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.p_IRU2_rads)   * Constants.rad2deg;
AC_Outputs.q_IRU2_deg_per_s = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.q_IRU2_rads)   * Constants.rad2deg;
AC_Outputs.r_IRU2_deg_per_s = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.r_IRU2_rads)   * Constants.rad2deg;
AC_Outputs.phi_IRU2_deg     = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.phi_IRU2_rad)  * Constants.rad2deg;
AC_Outputs.theta_IRU2_deg   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.theta_IRU2_rad)* Constants.rad2deg;
AC_Outputs.psi_IRU2_deg     = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.psi_IRU2_rad)  * Constants.rad2deg;

AC_Outputs.ax_IRU3_g        = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.ax_IRU3_g);
AC_Outputs.ay_IRU3_g        = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.ay_IRU3_g);
AC_Outputs.az_IRU3_g        = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.az_IRU3_g);
AC_Outputs.p_IRU3_deg_per_s = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.p_IRU3_rads)   * Constants.rad2deg;
AC_Outputs.q_IRU3_deg_per_s = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.q_IRU3_rads)   * Constants.rad2deg;
AC_Outputs.r_IRU3_deg_per_s = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.r_IRU3_rads)   * Constants.rad2deg;
AC_Outputs.phi_IRU3_deg     = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.phi_IRU3_rad)  * Constants.rad2deg;
AC_Outputs.theta_IRU3_deg   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.theta_IRU3_rad)* Constants.rad2deg;
AC_Outputs.psi_IRU3_deg     = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.IRU.psi_IRU3_rad)  * Constants.rad2deg;

AC_Outputs.VCAS_ADSP1_ms    = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.VCAS_ADSP1_ms);
AC_Outputs.alpha_ADSP1_deg  = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.alpha_ADSP1_rad) * Constants.rad2deg;
AC_Outputs.beta_ADSP1_deg   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.beta_ADSP1_rad)  * Constants.rad2deg;
AC_Outputs.VCAS_ADSP2_ms    = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.VCAS_ADSP2_ms);
AC_Outputs.alpha_ADSP2_deg  = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.alpha_ADSP2_rad) * Constants.rad2deg;
AC_Outputs.beta_ADSP2_deg   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.beta_ADSP2_rad)  * Constants.rad2deg;
AC_Outputs.VCAS_ADSP3_ms    = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.VCAS_ADSP3_ms);
AC_Outputs.alpha_ADSP3_deg  = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.alpha_ADSP3_rad) * Constants.rad2deg;
AC_Outputs.beta_ADSP3_deg   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.beta_ADSP3_rad)  * Constants.rad2deg;
AC_Outputs.VCAS_ADSP4_ms    = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.VCAS_ADSP4_ms);
AC_Outputs.alpha_ADSP4_deg  = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.alpha_ADSP4_rad) * Constants.rad2deg;
AC_Outputs.beta_ADSP4_deg   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.ADSP.beta_ADSP4_rad)  * Constants.rad2deg;

AC_Outputs.T_TStat1_K  = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.TP.T_TStat1_K);
AC_Outputs.p_pStat1_Pa = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.TP.p_pStat1_Pa);
AC_Outputs.H_pStat1_m  = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.TP.H_pStat1_m);

AC_Outputs.latitude_GPS_deg  = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.GPS.latitude_GPS_rad)  * Constants.rad2deg;
AC_Outputs.longitude_GPS_deg = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.GPS.longitude_GPS_rad) * Constants.rad2deg;
AC_Outputs.H_GPS_m           = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.GPS.H_GPS_m);

AC_Outputs.N1_LH_Sen_ADM   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Engine.N1_LH_Sen_ADM);
AC_Outputs.N1_RH_Sen_ADM   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Engine.N1_RH_Sen_ADM);

AC_Outputs.Elevator_LH_deg   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Elevator_LH_rad) * Constants.rad2deg;
AC_Outputs.Elevator_RH_deg   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Elevator_RH_rad) * Constants.rad2deg;
AC_Outputs.Aileron_LH_deg    = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Aileron_LH_rad)  * Constants.rad2deg;
AC_Outputs.Aileron_RH_deg    = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Aileron_RH_rad)  * Constants.rad2deg;
AC_Outputs.Rudder_deg        = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Rudder_rad)      * Constants.rad2deg;
AC_Outputs.HorizStabil_deg   = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.HorizStabil_rad) * Constants.rad2deg;
AC_Outputs.Flap_LH_deg       = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Flap_LH_rad)     * Constants.rad2deg;
AC_Outputs.Flap_RH_deg       = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Flap_RH_rad)     * Constants.rad2deg;

AC_Outputs.Spoiler_LH1_meas_deg = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Spoiler_LH1_meas_rad) * Constants.rad2deg;
AC_Outputs.Spoiler_LH2_meas_deg = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Spoiler_LH2_meas_rad) * Constants.rad2deg;
AC_Outputs.Spoiler_LH3_meas_deg = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Spoiler_LH3_meas_rad) * Constants.rad2deg;
AC_Outputs.Spoiler_LH4_meas_deg = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Spoiler_LH4_meas_rad) * Constants.rad2deg;
AC_Outputs.Spoiler_LH5_meas_deg = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Spoiler_LH5_meas_rad) * Constants.rad2deg;
AC_Outputs.Spoiler_RH1_meas_deg = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Spoiler_RH1_meas_rad) * Constants.rad2deg;
AC_Outputs.Spoiler_RH2_meas_deg = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Spoiler_RH2_meas_rad) * Constants.rad2deg;
AC_Outputs.Spoiler_RH3_meas_deg = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Spoiler_RH3_meas_rad) * Constants.rad2deg;
AC_Outputs.Spoiler_RH4_meas_deg = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Spoiler_RH4_meas_rad) * Constants.rad2deg;
AC_Outputs.Spoiler_RH5_meas_deg = VIRTTAC_SimDataOutputs.signals.values(:,VIRTTAC.OutputInterface.Index.Ctrl.Spoiler_RH5_meas_rad) * Constants.rad2deg;



% Model Input
% primary controls
Primary_Ctrl_Surface_Cmd.Time                   = VIRTTAC_SimDataInputs.time;
Primary_Ctrl_Surface_Cmd.Elevator_LH_cmd_deg    = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.PrimaryCtrlCmd.Elevator_LH_cmd_rad) * Constants.rad2deg;
Primary_Ctrl_Surface_Cmd.Elevator_RH_cmd_deg    = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.PrimaryCtrlCmd.Elevator_RH_cmd_rad) * Constants.rad2deg;
Primary_Ctrl_Surface_Cmd.HorizStabil_cmd_deg    = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.PrimaryCtrlCmd.HorizStabil_cmd_rad) * Constants.rad2deg;
Primary_Ctrl_Surface_Cmd.Aileron_LH_cmd_deg     = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.PrimaryCtrlCmd.Aileron_LH_cmd_rad) * Constants.rad2deg;
Primary_Ctrl_Surface_Cmd.Aileron_RH_cmd_deg     = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.PrimaryCtrlCmd.Aileron_RH_cmd_rad) * Constants.rad2deg;
Primary_Ctrl_Surface_Cmd.Rudder_cmd_deg         = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.PrimaryCtrlCmd.Rudder_cmd_rad) * Constants.rad2deg;

% secondary controls
Secondary_Ctrl_Surface_Cmd.Time                 = VIRTTAC_SimDataInputs.time;
Secondary_Ctrl_Surface_Cmd.Spoiler_LH1_cmd_deg  = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.SecondaryCtrlCmd.Spoiler_LH1_cmd_rad) * Constants.rad2deg;
Secondary_Ctrl_Surface_Cmd.Spoiler_LH2_cmd_deg  = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.SecondaryCtrlCmd.Spoiler_LH2_cmd_rad) * Constants.rad2deg;
Secondary_Ctrl_Surface_Cmd.Spoiler_LH3_cmd_deg  = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.SecondaryCtrlCmd.Spoiler_LH3_cmd_rad) * Constants.rad2deg;
Secondary_Ctrl_Surface_Cmd.Spoiler_LH4_cmd_deg  = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.SecondaryCtrlCmd.Spoiler_LH4_cmd_rad) * Constants.rad2deg;
Secondary_Ctrl_Surface_Cmd.Spoiler_LH5_cmd_deg  = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.SecondaryCtrlCmd.Spoiler_LH5_cmd_rad) * Constants.rad2deg;
Secondary_Ctrl_Surface_Cmd.Spoiler_RH1_cmd_deg  = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.SecondaryCtrlCmd.Spoiler_RH1_cmd_rad) * Constants.rad2deg;
Secondary_Ctrl_Surface_Cmd.Spoiler_RH2_cmd_deg  = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.SecondaryCtrlCmd.Spoiler_RH2_cmd_rad) * Constants.rad2deg;
Secondary_Ctrl_Surface_Cmd.Spoiler_RH3_cmd_deg  = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.SecondaryCtrlCmd.Spoiler_RH3_cmd_rad) * Constants.rad2deg;
Secondary_Ctrl_Surface_Cmd.Spoiler_RH4_cmd_deg  = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.SecondaryCtrlCmd.Spoiler_RH4_cmd_rad) * Constants.rad2deg;
Secondary_Ctrl_Surface_Cmd.Spoiler_RH5_cmd_deg  = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.SecondaryCtrlCmd.Spoiler_RH5_cmd_rad) * Constants.rad2deg;

% engine controls
Engine_Ctrl_Cmd.Time                            = VIRTTAC_SimDataInputs.time;
Engine_Ctrl_Cmd.N1_LH_cmd_ADM                   = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.EngineCmd.N1_LH_cmd_ADM);
Engine_Ctrl_Cmd.N1_RH_cmd_ADM                   = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.EngineCmd.N1_RH_cmd_ADM);

% AC configuration
AC_Config_Cmd.Time                              = VIRTTAC_SimDataInputs.time;
AC_Config_Cmd.Flap_cmd_ADM                      = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.ACConfigCmd.Flap_cmd_ADM);
AC_Config_Cmd.Gear_cmd_ADM                      = VIRTTAC_SimDataInputs.signals.values(:,VIRTTAC.InputInterface.Index.ACConfigCmd.Gear_cmd_ADM);
%% Assign to struct

VIRTTAC_SimData.Outputs = AC_Outputs;
VIRTTAC_SimData.Primary_Control_Surface_Cmd = Primary_Ctrl_Surface_Cmd;
VIRTTAC_SimData.Secondary_Control_Surface_Cmd = Secondary_Ctrl_Surface_Cmd;
VIRTTAC_SimData.Engine_Cmd = Engine_Ctrl_Cmd;
VIRTTAC_SimData.AC_Configuration_Cmd = AC_Config_Cmd;

clear('VIRTTAC_SimDataOutputs',...
      'Primary_Ctrl_Surface_Cmd',...
      'Secondary_Ctrl_Surface_Cmd',...
      'Engine_Ctrl_Cmd',...
      'AC_Config_Cmd',...
      'AC_Outputs');

