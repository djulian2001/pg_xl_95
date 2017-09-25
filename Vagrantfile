# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define "pg_gmt" do |gmt|
    # ubuntu 
    gmt.vm.box = "minimal/trusty64"
    gmt.vm.network "private_network", ip:"192.168.33.50"
    # gmt.vm.network "forwarded_port", guest:5432, host:5432   # not sure what port the gmt_proxy port will reside
    gmt.vm.provider "virtualbox" do |vb_gmt|
      vb_gmt.memory = "1024"
    end

    gmt.vm.provision "shell", path: "postgresXL-gmt.sh"
  end
  
  # config.vm.define "pg_cnd1" do |cnd1|
  #   # ubuntu 
  #   cnd1.vm.box = "minimal/trusty64"
  #   cnd1.vm.network "private_network", ip:"192.168.33.51"
  #   cnd1.vm.provider "virtualbox" do |vb_cnd1|
  #     vb_cnd1.memory = "1024"
  #   end

  #   cnd1.vm.provision "shell", path: "postgresXL-cnd1.sh"
  # end

  # config.vm.define "pg_cnd2" do |cnd2|
  #   # ubuntu 
  #   cnd2.vm.box = "minimal/trusty64"
  #   cnd2.vm.network "private_network", ip:"192.168.33.52"
  #   cnd2.vm.provider "virtualbox" do |vb_cnd2|
  #     vb_cnd2.memory = "1024"
  #   end

  #   cnd2.vm.provision "shell", path: "postgresXL-cnd2.sh"
  # end

end
