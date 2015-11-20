# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  #config.vm.box_check_update = false
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end
  config.vm.provider "virtualbox"
  config.vm.network "private_network", ip: "192.168.33.11"
  config.vm.hostname = "ruby"
  config.vm.define :ruby
  config.vm.synced_folder "/home/semutmerah/Project-ruby", "/var/www", :mount_options => ["dmode=755", "fmode=644"], owner: "vagrant", group: "vagrant"
  config.vm.provision :shell, :path => "setup.sh", :privileged => false
end
