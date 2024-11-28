#!/bin/bash
sudo snap install helm --classic
helm version
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
kubectl cluster-info
