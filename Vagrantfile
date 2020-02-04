# encoding: utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Box / OS
VAGRANT_BOX = 'ubuntu/bionic64'

# Box parameters
VM_NAME = 'nosql'
VM_MEMORY = 4096

Vagrant.configure(2) do |config|
  # Vagrant box from Hashicorp
  config.vm.box = VAGRANT_BOX

  # Set VM name in Virtualbox
  config.vm.provider "virtualbox" do |vb|
    vb.name = VM_NAME
    vb.memory = VM_MEMORY
  end

  # Port forwarding
  config.vm.network "forwarded_port", guest: 8888, host: 8888
  config.vm.network "forwarded_port", guest: 6379, host: 6379
  config.vm.network "forwarded_port", guest: 27017, host: 27017
  config.vm.network "forwarded_port", guest: 9042, host: 9042
  config.vm.network "forwarded_port", guest: 7687, host: 7687
  config.vm.network "forwarded_port", guest: 2480, host: 2480

  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision :shell, path: "configure.sh", privileged: false
  # config.vm.synced_folder '.', '/vagrant', disabled: true # synced project root to vagrant enabled by default

  # A message to show after vagrant up
  config.vm.post_up_message = "VM built ! Have fun !"
end