# Open Neuro Interface Specification
When creating neural acquisition tools, we have found that proper headstage
serialization and host to PC communication are some of the trickiest parts of
the development process. Therefore developers often resort to brittle solutions
that meet their needs but are hard to inter-operate and rely on proprietary
drivers and APIs(e.g. NI DAQs).  Alternatively, they may turn to ready-made
options with poor performance (e.g.  Arduino or Opal Kelly development boards).
Therefore, these interfaces become the limiting hardware for both terms of
integration (e.g. using disparate hardware in the same rig)  as well as
closed-loop performance (e.g. loop delay).

To address this, we have created the Open Neuro Interface (ONI) which is a set
of __general purpose, high-performance__ hardware communication protocols,
device driver specifications, and programming interfaces to support __arbitrary
mixtures of scientific hardware__.

The hope is that this specification will streamline the development of new
hardware for neural data acquisition and guarantee interoperability between
hardware and software that conforms to the spec. We also hope that the use of a
common protocols will allow easy integration of disparate hardware to develop
rich feedback control loops for neuroscience projects. If you are interested in
developing against this specification (e.g. for a miniscope, headstage,
position tracker, 2P microscope, etc) or improving it, we would love to [hear
from you](https://open-ephys.org/contact) and talk about the best way to
proceed.

## Contents
This specification formally defines the requirements of the following
components:

1. Open Neuro Interface Hardware Specification (oni-hw-spec.txt)
1. Open Neuro Interface API and Driver Translation Specification (oni-api-spec.txt)

These documents can be converted a variety of other formats using
[Pandoc](www.pandoc.org). The included Makefile can be used to convert them to
PDF.

## Contributing
The main branch contains the stable version of the specification. The unstable
version of the spec can be found in git branch indicating the version. 

## License
[MIT](https://en.wikipedia.org/wiki/MIT_License)
