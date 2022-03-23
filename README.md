# Docker image for Pylint

This project aims to provide a simple Docker image to encapsulate and run a [Pylint](https://pypi.org/project/pylint/) analysis through Docker.

### Run Pylint

#### Get latest image
Images are now hosted directly on GitHub:
```Dockerfile
docker pull ghcr.io/cnescatlab/pylint:latest
```

#### Run core checks
Assuming current directory contains the source code to analyze, simply run the following command:
```Dockerfile
docker run --rm -v ${PWD}:/src ghcr.io/cnescatlab/pylint:latest pylint <module_name>
```

#### Run core and CNES checks
Assuming current directory contains the source code to analyze, simply run the following command:
```Dockerfile
docker run --rm -v ${PWD}:/src ghcr.io/cnescatlab/pylint:latest pylint --load-plugins=cnes_checker <module_name>
```

### Versions matrix
Here is the versions matrix of the image:

|                                    TAG                                        |         PYLINT VERSION / CNES EXTENSION VERSION            |                        BASE IMAGE                      |
|:-----------------------------------------------------------------------------:|:----------------------------------------------------------:|:------------------------------------------------------:|
| [latest](https://github.com/cnescatlab/pylint/pkgs/container/cnescatlab/2.5.0)| [2.5.0](https://github.com/PyCQA/pylint/releases/tag/2.5.0) / [v5.0.0](https://github.com/cnescatlab/cnes-pylint-extension/releases/tag/v5.0.0)| [python:3.10.3-slim-buster](https://hub.docker.com/_/python) |
|  [2.5.0](https://github.com/cnescatlab/pylint/pkgs/container/cnescatlab/2.5.0)| [2.5.0](https://github.com/PyCQA/pylint/releases/tag/2.5.0) / [v5.0.0](https://github.com/cnescatlab/cnes-pylint-extension/releases/tag/v5.0.0)| [python:3.10.3-slim-buster](https://hub.docker.com/_/python) |

### How to contribute
If you experienced a problem with the plugin please open an issue. Inside this issue please explain us how to reproduce this issue and paste the log.

If you want to do a PR, please put inside of it the reason of this pull request. If this pull request fix an issue please insert the number of the issue or explain inside of the PR how to reproduce this issue.

### License
Copyright 2022 CNES CatLab.

Licensed under the [GNU General Public License, Version 3.0](https://www.gnu.org/licenses/gpl.txt)
