# Kubernetes Vagrantfile

## Configuraiton

Startup following three VMs:

* master:   10.240.0.10
* worker-0: 10.240.0.20
* worker-1: 10.240.0.21

## Startup kubernetes cluster with kubeadm

On master:

    $ sudo kubeadm init --pod-network-cidr=192.168.0.0/16
