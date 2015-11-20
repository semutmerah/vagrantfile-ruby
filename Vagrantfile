# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  # You can uncomment this to disable update checking for the box
  # config.vm.box_check_update = false

  # You can uncomment and change configuration below accordance your own resources
  # config.vm.provider "virtualbox" do |v|
  #   v.memory = 4096
  #   v.cpus = 2
  # end

  config.vm.provider "virtualbox"

  # This is where you config for the guest network, make sure the host address is not 1, because it will be used for the host system
  config.vm.network "private_network", ip: "192.168.33.11"

  # You can change this to your own preferable hostname
  config.vm.hostname = "ruby"

  # You can change this to your own preferable vbox name
  config.vm.define :ruby

  # You can uncomment and change sync_folder configuration below accordance to your own configuration, first_arg is your local directory, second_arg is your guest directory, third_arg is optional
  # config.vm.synced_folder "/home/semutmerah/Project-ruby", "/var/www", :mount_options => ["dmode=755", "fmode=644"], owner: "vagrant", group: "vagrant"

  config.vm.provision :shell, :path => "setup.sh", :privileged => false
end
