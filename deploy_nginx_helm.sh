#!/bin/bash

#Install dependencies
sh install_dependencies.sh

#Enable local docker registry
eval $(minikube docker-env)

#Build docker image locally 
sh build_docker_image.sh

#Deploy the application to our cluster with helm
sh deploy_nginx.sh