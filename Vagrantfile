# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/xenial64"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "../code", "/code", create: true

  config.vm.network "private_network", ip: "192.168.33.10"

  # provision the box
  config.vm.provision "shell" do |s|
    s.privileged = true
    s.path = 'provision.sh'
  end

 end
