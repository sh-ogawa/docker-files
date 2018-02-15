# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.box = "centos7.2"
  
  config.vm.define :node1 do |node|
    node.vm.network :private_network, ip:"1.0.0.1"
    node.vm.network "forwarded_port", guest: 8000, host: 10080
  end
  
  config.vm.define :node2 do |node|
    node.vm.network :private_network, ip:"1.0.0.2"
    node.vm.network "forwarded_port", guest: 8000, host: 20080
  end

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2
    vb.memory = 2048
  end
    
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provision/docker-play.yml"
  end
  
end
