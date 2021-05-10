# IEC UNIT TEST

Library written in pure IEC 61131-3 Structured text that can be used for unit testing of any PLC POU. This library has arisen from the need of having a manufacturer and IDE independent unit test framework that is easily portable to other platforms as the community requires.

## Current status

Check detailed info [here](https://github.com/tkucic/iecUnitTest/projects) in the projects tab.

### Done

- Implement the framework in CODESYS
- Verify the framework works in CODESYS

### TODO

- Redesign the Kernel so it can work on all systems
- Port the framework in B&R Automation studio
- Verify framework works in B&R Automation studio

## Documentation

Each assert function has a software description accessible by browsing this repositories [docs folder](docs/index.md). The documentation link is included in the description of POUs.

## Main idea

IecUnitTest is a collection of POUs that are written in a way that provides easy porting to other platforms. The platform agnostic POUs, further known as the Kernel, is provided in the JSON format so it can be accessed programmatically by the language of choice.

### Examples of processes

Kernel -> Python preprocessing -> B&R Porting script -> B&R Library
Kernel -> Python preprocessing -> IronPython Codesys -> Codesys library

## Platform usage

### Kernel

### CODESYS

### B&R Automation studio

## Contributing

We appreciate feedback and contribution to this repo! Before you get started, please see the following:

- [contribution guidelines](CONTRIBUTING.md)
- [code of conduct guidelines](CODE-OF-CONDUCT.md)
- [This repo's contribution guide](CONTRIBUTING.md)

## Support + Feedback

Include information on how to get support. Consider adding:

- Use [Issues](issues) for code-level support
- Use [Community]() for usage, questions, specific cases

## License

Published under the MIT license
