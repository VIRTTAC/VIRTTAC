# VIRTTAC-Castor Open Loop Workbench

This directory contains the necessary script to run the VIRTTAC-Castor open loop simulation. The main entry point for the simulation is the *`VIRTTAC_Run.m`* script, which contains the following parts and functionalities:

- set up of VIRTTAC workbench and initialization of necessary variables (default) in the Matlab workspace;
- definition of the flight condition and aircraft configuration for the trim and subsequent simulation as well as the definition of failure cases;
- trimming of the VIRTTAC-Castor model, which is slightly imperfect similar to a pilot stabilizing the aircraft;
- definition of the maneuver input for the open loop simulation using predefined (system identification) maneuvers (can be extended by individually defined maneuvers/inputs);
- the VIRTTAC-Castor model simulation
- plot of open loop simulation results: aircraft response measured by various sensors similar to a real aircraft

## Remarks
- Due to the basic idea of VIRTTAC to provide an aircraft simulation model for virtual flight test, the simulation environment does not allow to access other aircraft parameters (states or outputs) than the ones measured by the built-in sensors in the VIRTTAC-Castor model.
- This open loop simulation workbench might be used as a template to develop further workbenches by the users. It is recommended to keep the basic structure of the scripts to ease the comparability between different workbenches.

