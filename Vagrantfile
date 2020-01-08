# encoding: utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Box / OS
VAGRANT_BOX = 'debian/stretch64'
VAGRANT_BOX_VERSION = '9.9.1'

# Box parameters
VM_NAME = 'nosql'
VM_MEMORY = 4096

Vagrant.configure(2) do |config|
  # Vagrant box from Hashicorp
  config.vm.box = VAGRANT_BOX
  config.vm.box_version = VAGRANT_BOX_VERSION
  
  # Actual machine name
  config.vm.hostname = VM_NAME

  # Set VM name in Virtualbox
  config.vm.provider "virtualbox" do |v|
    v.name = VM_NAME
    v.memory = VM_MEMORY
  end

  # Port forwarding
  config.vm.network "forwarded_port", guest: 8888, host: 8888
  config.vm.network "forwarded_port", guest: 6379, host: 6379
  config.vm.network "forwarded_port", guest: 27017, host: 27017
  config.vm.network "forwarded_port", guest: 9042, host: 9042
  config.vm.network "forwarded_port", guest: 7687, host: 7687

  # View the documentation for the provider you're using for more
  # information on available options.
  config.vm.provision :shell, :path => "bootstrap.sh"

  # A message to show after vagrant up
  config.vm.post_up_message = "Good job !"
end