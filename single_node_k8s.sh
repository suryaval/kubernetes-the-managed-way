#!/bin/bash

echo "When you start an ec2 instance t2.medium to spin up a k8s cluster(master), this script helps bootstrap some basic things... you can also provide this script to cloudformation templates"

echo "Installing KubeAdm"

apt-get install -y apt-transport-https ca-certificates curl

curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

apt-get update

apt-get install -y kubelet kubeadm kubectl

echo "Installing Docker"

apt-get install -y docker.io
