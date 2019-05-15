# Ubuntu Base Image Container Build #

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/geoffh1977/ubuntu.svg?style=plastic)
![GitHub](https://img.shields.io/github/license/geoffh1977/docker-ubuntu.svg?style=plastic)

## Description ##
This repository contains a custom build of an Ubuntu base container. The build improves the security of the base container by:

* Adding a non-root user named "user" which a UID of 1000 and GID of 1000.
* A Makefile which simplifies the local build setup
* A YAML configuration file where all the variables are kept in one nice location

_N.B. As the Ubuntu Build creates a defaulot non-root user. Future builds in this images build-chain will require a USER root command to allow for installations and system-level container configuration._

## Downloading The Container ##
This repository is connected to Docker Hub - so you will always find the latest builds there. Execute the _docker pull_ command in order to get the required image:

* geoffh1977/ubuntu:latest - The latest build that was completed
* geoffh1977/ubuntu:bionic - The latest build of a Major version.

## Building The ubuntu Container ##
After cloning the repository, simply execute the _make build_ command while in the repository root path to execute a docker build of the current Dockerfile. The Makefile contains a number of useful commands which perform different actions.

### Getting In Contact ###
If you find any issues with this container or want to recommend some improvements, fell free to get in contact with me or submit pull requests on github.
