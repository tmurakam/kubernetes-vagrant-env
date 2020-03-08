# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
  end

  config.vm.define "master" do |c|
    c.vm.hostname = "master"
    c.vm.network "private_network", ip: "10.240.0.10"

    c.vm.provision :shell, :path => "scripts/setup-hosts.sh"
  end

  (0..1).each do |n|
    config.vm.define "worker-#{n}" do |c|
      c.vm.hostname = "worker-#{n}"
      c.vm.network "private_network", ip: "10.240.0.2#{n}"

      c.vm.provision :shell, :path => "scripts/setup-hosts.sh"
    end
  end
end
