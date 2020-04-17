# Open Neuro Interface Specification [WIP]

When developing neural acquisition tools, we have found that proper headstage
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
way: it serves as a high performance, open-source platform upon which cool
neuroscience tools can by built. We also hope that the use of a common
protocols will allow easy integration of disparate hardware to develop rich
feedback control loops for neuroscience projects. If you are interested in
developing against this specification (e.g. for your miniscope, headstage,
position tracker, 2P microscope, etc), we would love to [hear from
you](https://gitter.im/open-ephys-pcie/Lobby) and talk about the best way to
proceed. If you prefer a private conversation, please contact us via [Open
Ephys](http://www.open-ephys.org/contact/).

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

## Implementations

### Open Ephys 2.0
In addition to these specifications, we have created the following flagship
implementations which form the basis of our [next generation acquisition
system](https://jonnew.github.io/open-ephys-pcie/). These implementations are
modular -- you can use them for your project. There is no need to reinvent the
wheel:

- Firmware implementations based on (1,2).
    - TODO

- Device driver implementation based on (3)
    - TODO

- API implementations based upon (4):
    - [liboni](https://github.com/jonnew/open-ephys-pcie/tree/master/api/liboni) is an ANSI-C open-ephys++ API implementation.
    It contains functions for configuring and stream data to and from hardware.
    - [cpponi](https://github.com/jonnew/open-ephys-pcie/tree/master/api/cpponi) C++14 bindings for liboni.
    - [clroni](https://github.com/jonnew/open-ephys-pcie/tree/master/api/clroni) CLR/.NET bindings for liboni.

If you think these implementations are missing something, feel free to use the
spec to develop for yourself or submit a bug report. When you use these
implementations or your own ONI-compatible hardware, firmware, or API, your
project will be automatically compatible with Open Ephys tools!

## Feedback
We know we did not do a perfect job with this specification. [Please tell us
why!](https://gitter.im/open-ephys-pcie/Lobby) -- it will help this project be
generally useful for the neuroscience research.

## License
[MIT](https://en.wikipedia.org/wiki/MIT_License)
