#!/bin/bash

#Build Docker image dari berkas Dockerfile
docker build -t yunandar711/karsajobs:latest .

#Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u yunandar711 --password-stdin

#Push image ke Docker Hub
docker tag karsajobs:latest yunandar711/karsajobs:latest
docker push yunandar711/karsajobs:latest