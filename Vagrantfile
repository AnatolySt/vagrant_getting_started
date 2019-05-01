# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :local_first do |alpha|
    alpha.vm.box = "hashicorp/precise64"
    alpha.vm.network :private_network, ip: "10.0.0.10"
    alpha.vm.hostname = "local_first"
  end

  config.vm.define :local_second do |beta|
    beta.vm.box = "hashicorp/precise64"
    beta.vm.network :private_network, ip: "10.0.0.11"
    beta.vm.hostname = "local_second"
  end
end
