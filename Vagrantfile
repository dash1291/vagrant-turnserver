# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "centos"
  config.vm.network "private_network", ip: "192.168.33.11"
  config.vm.synced_folder ".", "/home/vagrant/turn-setup"
  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
   config.vm.provision "shell", inline: <<-SHELL
    sudo yum install -y make gcc cc gcc-c++ wget
    sudo yum install -y openssl-devel libevent libevent-devel mysql-devel mysql-server   
    
    wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
    tar xvfz libevent-2.0.21-stable.tar.gz
    cd libevent-2.0.21-stable && ./configure
    sudo ./configure && sudo make && sudo make install && cd ..
    
    wget http://turnserver.open-sys.org/downloads/v3.2.4.1/turnserver-3.2.4.1.tar.gz
    tar -xvzf turnserver-3.2.4.1.tar.gz
    cd turnserver-3.2.4.1
    sudo ./configure && sudo make && sudo make install
    
    sudo mkdir /etc/turnserver
   SHELL
end
