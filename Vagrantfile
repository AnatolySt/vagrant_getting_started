# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
	SUBNET = '10.0.0'
	EMPTY_UBUNTU_BOX = 'generic/ubuntu1804'

	config.vm.define 'dockerized' do |machine|
		machine.vm.box = 'williamyeh/ubuntu-trusty64-docker'

		machine.vm.network "forwarded_port", guest: 80, host: 8080
		machine.vm.network "forwarded_port", guest: 5432, host: 8081
		machine.vm.network "forwarded_port", guest: 6379, host: 8082
	end

    config.vm.define 'empty_ubuntu' do |machine|
    	machine.vm.box = EMPTY_UBUNTU_BOX

    	machine.vm.hostname = 'app'
    	machine.vm.network :private_network, ip: "#{SUBNET}.10"
	    machine.vm.network "forwarded_port", guest: 22, host: 2222
  	end

  	config.vm.define 'app' do |machine|
    	machine.vm.box = EMPTY_UBUNTU_BOX

    	machine.vm.hostname = 'app'
    	machine.vm.network :private_network, ip: "#{SUBNET}.13"
	    machine.vm.network "forwarded_port", guest: 22, host: 2223

  	end

  	config.vm.define 'db' do |machine|
    	machine.vm.box = EMPTY_UBUNTU_BOX

    	machine.vm.hostname = 'db'
    	machine.vm.network :private_network, ip: "#{SUBNET}.14"
	    machine.vm.network "forwarded_port", guest: 22, host: 2224
  	end
end
