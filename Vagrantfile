# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	{ 'alpha': '10', 'beta': '11' }.each do |machine, ip|
		config.vm.define "#{machine}" do |v_machine|
			v_machine.vm.box = "hashicorp/precise64"
			v_machine.vm.network :private_network, ip: "10.0.0.#{ip}"
			v_machine.vm.hostname = "#{machine}"
		end
	end
end