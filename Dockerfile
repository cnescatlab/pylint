FROM python:3.10.3-slim-buster AS base

ENV PYLINT_VERSION=2.5.0
ENV PYLINT_SONARJSON_VERSION=1.0.3
ENV PYLINT_CNES_EXT_VERSION=v5.0.0

WORKDIR /opt

RUN pip install \
    pylint==${PYLINT_VERSION} \
    pylint-sonarjson==${PYLINT_SONARJSON_VERSION} \
 && apt-get update -y \
 && apt-get install -y \
    unzip \
    curl \
 && rm -rf /var/lib/apt/lists/* \
 && curl -k -O https://codeload.github.com/cnescatlab/cnes-pylint-extension/zip/refs/tags/${PYLINT_CNES_EXT_VERSION} \
 && unzip ${PYLINT_CNES_EXT_VERSION} \
 && mv cnes-pylint-* cnes-pylint-extension-${PYLINT_CNES_EXT_VERSION} \
 && rm ${PYLINT_CNES_EXT_VERSION} \
 && cd cnes-pylint-extension-${PYLINT_CNES_EXT_VERSION} \
 && echo export PYTHONPATH=$PYTHONPATH:$PWD/checkers >> ~/.bashrc

COPY pylintrc /etc

LABEL maintainer="cnescatlab" 
WORKDIR /src 
