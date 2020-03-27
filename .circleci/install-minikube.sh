#!/bin/bash

# Install the latest Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
   && sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Start minikube
sudo -E minikube start minikube start --vm-driver=none --kubernetes-version v1.14.0

# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# Install helm
EXE_FOLDER=/usr/local/bin
curl -sLo_ https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz
tar -zxvf _
sudo mv ./linux-amd64/helm ${EXE_FOLDER}/
sudo chmod +x $EXE_FOLDER/helm
rm _
rm -rf linux-amd64
sudo helm repo add stable https://kubernetes-charts.storage.googleapis.com
sudo helm repo update
