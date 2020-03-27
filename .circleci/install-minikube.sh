#!/bin/bash

MINIKUBE_VERSION=1.9.0
curl -Lo minikube \
    "https://github.com/kubernetes/minikube/releases/download/v{MINIKUBE_VERSION}/minikube-linux-amd64"
chmod +x minikube
#sudo mv minikube /usr/local/bin/
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/


minikube start minikube start --vm-driver=none --kubernetes-version v1.14.0