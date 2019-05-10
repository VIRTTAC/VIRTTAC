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

The VIRTTAC repository contains a documentation directory named _doc where general information on VIRTTAC as well as links to publications on the VIRTTAC model family, a particular VIRTTAC model, or simply where one of these models was used by th authors.

Aside from this documentation directory, there is / will be a directory for each aircraft of the VIRTTAC family. Presently, the first and only VIRTTAC model is VIRTTAC-Castor and it can be found under the directory Castor.

**For further information regarding the use of each of the VIRTTAC models, please refer to the README contained in their directory.** As far as reasonnably possible, the models and the related scripts will be built such that all models will be used in the same or a similar manner.
