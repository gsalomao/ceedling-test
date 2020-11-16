# Copyright (C) 2020 Gustavo Salomao
# All rights reserved.

# Base image
FROM debian:buster-slim

# Install system dependencies
RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    cmake \
    cppcheck \
    gcc-multilib \
    g++-multilib \
    python3 \
    python3-pip \
    ruby

# Install python dependencies
RUN pip3 install \
    gcovr \
    setuptools

# Install ceedling
RUN gem install ceedling

# Create default user
ARG USER=user
ARG UID=1000
ARG GID=1000
RUN useradd -m ${USER} --uid=${UID}
USER ${UID}:${GID}

# Project workspace
WORKDIR /src
