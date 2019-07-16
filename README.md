# Fedora 30 

[![Build Status](https://travis-ci.org/strongbrent/docker-fedora30-testuser.svg?branch=master)](https://travis-ci.org/strongbrent/docker-fedora30-testuser) [![Docker Automated build](https://img.shields.io/docker/cloud/automated/strongbrent/docker-fedora30-testuser.svg)](https://cloud.docker.com/repository/docker/strongbrent/docker-fedora30-testuser) [![Docker Automated build](https://img.shields.io/docker/cloud/build/strongbrent/docker-fedora30-testuser.svg)](https://cloud.docker.com/repository/docker/strongbrent/docker-fedora30-testuser/builds)

## Background
Stock Fedora 30 Docker image with a default user for automation testing.

## How to Build this Image

This image is built automatically on Docker Hub any time a commit is made or code is merged to the `master` branch. However, if you need to need to manually build an image on your workstation, execute the following:
```
make build
```

## How to Run this Container

To run a container from this image, run this command:
```
make run
```
When you exit, the container is automatically removed.

## How to Clean Up
To remove the container image, run this command:
```
make clean
```

## Disclaimer 

This image is used to test build automation scripts. It is most definitely not suitable nor secure enough to run in any production environment.
