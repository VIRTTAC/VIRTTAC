# VIRTTAC

VIRTTAC (VIRtual TesT AirCraft) is a family of aircraft simulation models for Matlab/Simulink. It currently consists of one specific fixed-wing aircraft model named VIRTTAC-Castor but will be extended by various other models representing aircraft of different types and sizes.

VIRTTAC is developed with two main objectives in mind:

1) Provide high-quality representative models to engineers and researchers who need some but do not have access to the kind of research infrastructure that the authors have access to.
2) Provide a wide range of benchmarks to the community with various complexity levels, including some which include as many real-world effects as possible. The objective for the most complex benchmarks is that it should never be possible to pass their test successfully but fail in the real world due to effects that could not be tested with VIRTTAC.

Basically, VIRTTAC addresses the needs of scientists but also students in their daily work of aeronautic research:

*"VIRTTAC users are basically aeronautical engineers who are confronted with a new aircraft. They can flight-test the aircraft and learn how it flies, but there is still a difficulty to predict how it behaves and they cannot access physical quantities unless there is a sensor measuring them."*

## Getting Started

VIRTTAC´s current developments target Matlab/Simulink as a simulation framework. The core of the aircraft simulation itself is independent of MATLAB/Simulink, however the users can only interact with the VIRTTAC models through Simulink. Future developments might also support other ways to interact with the models depending on the users´ needs.

### Download and Installation

To clone the entire VIRTTAC repository, you can use the standard 'clone' command of git:

```
git clone https://www.github.com/VIRTTAC/VIRTTAC
```

or visit the github page [https://www.github.com/VIRTTAC/VIRTTAC](https://www.github.com/VIRTTAC/VIRTTAC) and use the download link.

### Overall Structure - Where to Start?

##### For the impatients among us...

You just want to get started and run a first simulation without reading the documentation? Here is the 4 steps way to your first simulation:

1. Make sure you have downloaded or checked out a version VIRTTAC

2. Start MATLAB

3. Set MATLAB's "Current Directory" to YOUR_VIRTTAC_DIRECTORY/Castor/workbenches/OpenLoopSimulation

4. Run the script "VIRTTAC_Run.m"

This will initialized VIRTTAC-Castor, perform a trim computation, a simulation, and plot the results. This workbench was developped with the aim of showing what can be done with VIRTTAC-Castor without requiring any development from new users.

##### VIRTTAC Distribution Package

The VIRTTAC model distribution package contains several directories which include the different model parts, necessary scripts, tools and workbenches. The "workbenches" are where user will spend most of their time.

In detail, the VIRTTAC distribution package includes the following directories:

- *`init`* : all necessary scripts for the default initialization of the VIRTTAC simulation model

- *`maneuvers`* : 

- *`model_libraries`* : libraries of VIRTTAC Simulink model blocks and VIRTTAC-Castor model s-functions for different supported platforms

- *`plots`* : scripts for standardized plots of simulation results (VIRTTAC model outputs)

- *`tools`* : different tools to use during the VIRTTAC simulation and evaluation of results

- *`version_infos`* : scripts to determine the user´s Matlab/Simulink version and compare with supported and tested Matlab/Simulink versions

- *`workbenches`* :  contains all workbenches (already available or to be developed by the user) and the main entry point for the VIRTTAC simulation, which is further described in an additional workbench README.

#### Workbenches

###### What is this?

A workbench is an area (here a directory/folder) where developments for a specific use of VIRTTAC are made. They are materialized as sub-folder of the "workbenches" folder.

All models, scripts, etc. that are specific to the workbench/use-case should be located in the corresponding workbench directory. By specific we mean "that cannot be proven to be useful for ALL use-cases" => functions or models that are used by a couple of workbenches but not all of them, have to be duplicated! (one copy in each workbench)

The first workbench that is provided is called "Open Loop Simulation" and can be found in the directory named *`workbenches\OpenLoopSimulation`*. In the near future, other workbenches will be provided in other subfolders.

###### Open Loop Simulation (Workbench)

The workbench provided under the name "Open Loop Simulation" (see folder with the same name but without spaces). It permits to perform various simulations with or without open loop commands to the actuators and produces a standard output plot based at the end.

To run that workbench, open MATLAB and browse to

**YOUR_VIRTTAC_PATH/workbenches/OpenLoopSimulation** (Unix/GNU-Linux/Mac)

or 

**YOUR_VIRTTAC_PATH\workbenches\OpenLoopSimulation** (Windows)

where **YOUR_VIRTTAC_PATH** is the directory where you installed VIRTTAC

To start a simulation, run the `VIRTTAC_Run.m` script. Note that this is the default name for the starting script in all workbenches. If there is a good reason not to use that name, another starting point can be used, but then users should be provided with the adequate help in a README file at the root of that workbench or in a proper workbench documention.

In the Open Loop Simulation workbench, the *`VIRTTAC_Run.m`* script sets up the simulation environment, trims the aircraft, defines or selects a predefined maneuver, simulates the aircraft response to that maneuver, plots the results and exports this plot. 

###### Manage the MATLAB Paths Related to VIRTTAC

As it was mentioned above the *`workbenches`* folder is meant to contain various subfolders, each one corresponding to a different workbench/use-case. 

Note that the workbench currently being used is defined by your MATLAB's "Current Directory". In order to prevent conflict between files of various workbenches, neither the *`workbenches`* folder nor its subfolders (nor any of their subfolders, but some exception could be made for very large and complex workbenches, provided adequate explanations and documentation for the users) should ever be found into the MATLAB paths.

Generally speaking users should never add any of the VIRTTAC folders in their MATLAB default paths. This is bad practice!

Each workbench should provide a *`VIRTTAC_SetPath.m`* script or function which would load the required paths to the model, model libraries, and other general purpose functions required by VIRTTAC and this specific workbench.

#### Model Libraries

The Simulink model libraries used/references in the workbench-specific models as well as the s-functions which contain the actual VIRTTAC aircraft simulation programs are located in the *`model_libraries`* folder. Until now, we were able to prevent having to handle dependencies to specific MATLAB/Simulink release and platform/OS. The only distinctions (sub-folders) that are forseen are for splitting the libraries for various members of the VIRTTAC family (when Castor will not be the only model anymore). Note that the individual model s-functions are not released under the MIT-license but under CC-BY-ND 4.0 and an additional license file with the details is placed aside these s-function. CC-BY-ND 4.0 is also a very permissive license, but forbids to modify these files (here compiled s-functions) in any way. In particular any attempt to disassemble them is forbidden!

The s-function of VIRTTAC models is kept simple with only one input and output port. Each aircraft within the family has/will have the same s-function Simulink block, with a different s-function (library) to be called. To account for the characteristics of each model, the sizes of the input and output vectors might be different (even for model siblings), but the s-function block will not be changed (as foreseen right now). 

#### VIRTTAC-Castor Model Interfaces

The input and output interfaces for VIRTTAC-Castor can be found in the file "VIRTTAC-CASTOR_INPUT_OUTPUT_INTERFACES" provided as Markdown, HTML, and PDF.

### Supported Operating Systems and MATLAB/Simulink Versions

A significant amount of testing is performed for in order to try to prevent any issue with VIRTTAC (typically various computers with different configuration for each of the platforms and MATLAB/Simulink versions). 

Please help us ensuring the best user-experience for everyone by reporting your experience, especially in the following cases:

- If you experience problems with one of the versions listed hereafter.

- If you use successfully VIRTTAC or experience troubles while using VIRTTAC on one of the platform/versions not listed hereafter.

on the contact email address [VIRTTAC@dlr.de](mailto:VIRTTAC@dlr.de) .

A large variability in terms of simulation speed has been observed between computers, platforms, and MATLAB/Simulink versions, but the trends are not always clear. If your VIRTTAC-Castor (v0.5-alpha) open loop simulation (basically only the model) at a sampling time of 0.01 s runs significantly faster than 50 times real-time speed or slower than 20 times real-time speed, we would be interested to learn about it.

#### Windows

The current version of VIRTTAC-Castor (v0.5-alpha) was successfully tested on various computers with Windows 7 and 10 and with the following MATLAB/Simulink versions: 

###### 32-bit

- R2007b (Simulink 7.5)
- R2011b (Simulink7.8)

###### 64-bit

- R2007b (Simulink 7.5)
- R2011b (Simulink 7.8)
- R2013a (Simulink 8.1)
- R2015b (Simulink 8.6)
- R2017b (Simulink 9.0)
- R2018a (Simulink 9.1)
- R2018b (Simulink 9.2)

#### GNU/Linux

The current version of VIRTTAC-Castor (v0.5-alpha) was successfully tested on an Ubuntu 18.10 (64-bit x86-amd64) with the following MATLAB/Simulink version:

- R2018b (Simulink 9.2)

Currently only a very restricted number on GNU/Linux computers and configurations are used for testing: feedback from GNU/Linux users would be very appreciated.

#### Mac OS X

The current version of VIRTTAC-Castor (v0.5-alpha) was successfully tested on Mac OS X Mojave (10.14) and with the following MATLAB/Simulink version:

- R2018b (Simulink 9.2)

Currently only a very restricted number on Mac computers and configurations are used for testing: feedback from Mac users would be very appreciated.
