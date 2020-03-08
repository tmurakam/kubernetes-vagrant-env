# Kubernetes Vagrantfile

## Configuraiton

Startup following three VMs:

* master:   10.240.0.10
* worker-0: 10.240.0.20
* worker-1: 10.240.0.21

## Startup kubernetes cluster with kubeadm

On master:

    $ sudo kubeadm init --apiserver-advertise-address=10.240.0.10 --pod-network-cidr=192.168.0.0/16

Take memo with 'kubeadm join..." command line.

Copy kube config file:

    $ mkdir -p $HOME/.kube
    $ sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    $ sudo chown $(id -u):$(id -g) $HOME/.kube/config

Install calico network plugin:

    $ kubectl apply -f https://docs.projectcalico.org/v3.8/manifests/calico.yaml

Note: For CentOS8, use calico.yaml in the centos8 dir, which uses nftables backend.

On each workers:

    $ sudo kubeadm join...
