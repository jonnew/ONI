# NOTE: This repository has been moved to https://github.com/open-ephys/ONI. This repo has been archived.

# Open Neuro Interface Specification [WIP]

When creating neural acquisition tools, we have found that proper headstage
serialization and host to PC communication are some of the trickiest parts of
the development process. Therefore developers often resort to brittle solutions
that meet their needs but are hard to inter-operate (e.g. NI DAQs).
Alternatively, they may turn to ready-made options with poor performance (e.g.
multiple Arduinos or Opal Kelly development boards). Therefore, these
interfaces become the limiting hardware for both terms of integration (e.g.
using disparate hardware in the same rig)  as well as closed-loop performance
(e.g. loop delay).

To address this, we have created the Open Neuro Interface (ONI) which is a set
of __general purpose__ communication protocols, device driver specifications,
and programming interfaces to support __arbitrary mixtures of hardware__. These
designs are formally described by the [ONI Specificaiton](oni-spec.pdf), which was
developed with lots of community input.

The hope is that this acquisition system will get the boring part out of the
way: it serves as a high performance, open-source platform upon which new
brain interfacing technologies can by built. We also hope that the use of a common
protocols will allow easy integration of disparate hardware to develop rich
feedback control loops for neuroscience projects. If you are interested in
developing against this specification (e.g. for your miniscope, headstage,
position tracker, 2P microscope, etc), we would love to [hear from
you](https://open-ephys.org/contact) and talk about the best way to
proceed.

## Contents
The [ONI Specificaiton](oni-spec.pdf) formally defines the requirements of the
following components:

1. Headstage to host serialization protocol specification [WIP]
1. Host to PC communication protocol specification
1. Host device driver specification [WIP]
1. Host programming interface specification

Each can be found as a separate section in the specification itself. 

## Contributing
[oni-spec-wip.txt](oni-spec-wip.txt) is the _unstable_ work in
progress for the next ONI revision. Please make changes and PRs to this
document only.

## ONIX Implementations
Using the ONI specificaiton, Open Ephys has created ONIX. Have a look at the
[ONIX Documentation](https://open-ephys.github.io/onix-docs/index.html) 
for more information.

## Feedback
We know we did not do a perfect job with this specification. Please tell us
why in [the issues](https://github.com/open-ephys/ONI/issues)! This will help 
ONI be more generally useful for making powerful tools.

## License
[MIT](https://en.wikipedia.org/wiki/MIT_License)
