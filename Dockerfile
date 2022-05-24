FROM python:3.10.4-slim-buster AS base

ENV PYLINT_VERSION=2.13.5
ENV PYLINT_SONARJSON_VERSION=1.0.3
ENV PYLINT_CNES_EXT_VERSION=6.0.0

WORKDIR /opt

RUN pip install \
    pylint==${PYLINT_VERSION} \
    pylint-sonarjson==${PYLINT_SONARJSON_VERSION} \
    cnes-pylint-extension==${PYLINT_CNES_EXT_VERSION} \
 && apt-get update -y \
 && apt-get install -y \
    unzip \
    curl \
 && rm -rf /var/lib/apt/lists/*

COPY pylintrc /etc

LABEL maintainer="cnescatlab" 
WORKDIR /src 
