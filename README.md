# Docker image for Pylint

This project aims to provide a simple Docker image to encapsulate and run a [Pylint](https://pypi.org/project/pylint/) analysis through Docker.

### Run Pylint

#### Get latest image
Images are now hosted directly on GitHub:
```Dockerfile
docker pull ghcr.io/cnescatlab/pylint:latest
```

#### Run core and CNES checks for SonarQube
Assuming current directory contains the source code to analyze, simply run the following command:
```Dockerfile
docker run --rm -v ${PWD}:/src ghcr.io/cnescatlab/pylint:latest pylint <module_name>
```

#### Default configuration
By default, pylintrc defines many specific options. See [pylintrc](https://github.com/omegacen/pylint-sonarjson/blob/master/pylintrc) for more information.

##### Activated plugins
- cnes_checker
- pylint.extensions.check_elif
- pylint_sonarjson

##### Activated rules
- C0113
- C0122
- C0203
- C0204
- C0326
- C0411
- C0412
- C0413
- E0108
- E0213
- E0601
- E0602
- F0002
- R0203
- R0204
- R0401
- R0915
- R5101
- R5102
- R5103
- R5104
- R5105
- R5106
- R5201
- R5301
- R5302
- R5401
- R5402
- R5403
- W0102
- W0312
- W0403
- W0404
- W0406
- W0602
- W0603
- W0612
- W0621
- W0622
- W0703
- W9095
- W9096
- W9097

#### pylint_sonarjson
For more information about injecting Pylint results in SonarQube please refer to the documentation of [omegacen/pylint-sonarjson](https://github.com/omegacen/pylint-sonarjson) plugins.

### Versions matrix
Here is the versions matrix of the image:

|                                    TAG                                             |         PYLINT / CNES EXTENSION / PYLINT_SONARJSON VERSION            |                        BASE IMAGE                      |
|:----------------------------------------------------------------------------------:|:----------------------------------------------------------:|:------------------------------------------------------:|
| [latest](https://github.com/cnescatlab/pylint/pkgs/container/cnescatlab/2.13.5)  | [2.13.5](https://github.com/PyCQA/pylint/releases/tag/v2.13.5) / [v6.0.0](https://github.com/cnescatlab/cnes-pylint-extension/releases/tag/v6.0.0) / [1.0.3](https://pypi.org/project/pylint-sonarjson/1.0.3) | [python:3.10.4-slim-buster](https://hub.docker.com/_/python) |
| [2.13.5](https://github.com/cnescatlab/pylint/pkgs/container/cnescatlab/2.13.5)  | [2.13.5](https://github.com/PyCQA/pylint/releases/tag/v2.13.5) / [v6.0.0](https://github.com/cnescatlab/cnes-pylint-extension/releases/tag/v6.0.0) / [1.0.3](https://pypi.org/project/pylint-sonarjson/1.0.3) | [python:3.10.4-slim-buster](https://hub.docker.com/_/python) |
| [2.5.0-1](https://github.com/cnescatlab/pylint/pkgs/container/cnescatlab/2.5.0-1)  | [2.5.0](https://github.com/PyCQA/pylint/releases/tag/pylint-2.5.0) / [v5.0.0](https://github.com/cnescatlab/cnes-pylint-extension/releases/tag/v5.0.0) / [1.0.3](https://pypi.org/project/pylint-sonarjson/) | [python:3.10.3-slim-buster](https://hub.docker.com/_/python) |
|  [2.5.0](https://github.com/cnescatlab/pylint/pkgs/container/cnescatlab/2.5.0)     | [2.5.0](https://github.com/PyCQA/pylint/releases/tag/pylint-2.5.0) / [v5.0.0](https://github.com/cnescatlab/cnes-pylint-extension/releases/tag/v5.0.0) / - | [python:3.10.3-slim-buster](https://hub.docker.com/_/python) |

### How to contribute
If you experienced a problem with the plugin please open an issue. Inside this issue please explain us how to reproduce this issue and paste the log.

If you want to do a PR, please put inside of it the reason of this pull request. If this pull request fix an issue please insert the number of the issue or explain inside of the PR how to reproduce this issue.

### License
Copyright 2022 CNES CatLab.

Licensed under the [GNU General Public License, Version 3.0](https://www.gnu.org/licenses/gpl.txt)
