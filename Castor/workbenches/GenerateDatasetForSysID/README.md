# VIRTTAC-Castor Generate Dataset for System Identification Workbench

This directory contains the necessary script to generate a dataset for system identification purposes using VIRTTAC-Castor. The main entry point for the simulation is the *`VIRTTAC_GenerateDataset.m`* script, which contains the following parts and functionalities:

- Set up of the VIRTTAC model and initialization of necessary variables (default) in the Matlab workspace.
- Definition of a list of system identification maneuvers and flight conditions (see inside the MATLAB file *`VIRTTAC_InitListOfTestPoints.m`* within the workbench directory).
- Performing all these maneuvers and saving the results (one .mat file per maneuver is created under the directory *`datasets`* within the directory corresponding to the current date and time). 

Plots are not automatically generated for the simulated maneuvers, however in the workbench directory a function called *`VIRTTAC_ReadAndPlotDatasets.m`* is provided. It can be used to automatically create a plots and export them both to PDF and to PNG (one envelope plot and one time series plot for each maneuver)

Further information on this workbench can be found in the paper: Nicolas Fezans, Christoph Deiler, Mathias Stefan Roeser: "Generation of a Dataset for System Identification with VIRTTAC-Castor," Proceedings of the 2019 German Aerospace Congress (DLRK),
Darmstadt, Germany, Sept. 30th - Oct. 2nd 2019. Document ID: DLRK2019_490132. [https://elib.dlr.de/129105/](https://elib.dlr.de/129105/)
