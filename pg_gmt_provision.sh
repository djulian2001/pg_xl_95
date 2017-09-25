#!/bin/sh

# lets add the needed stuff got get postgresxl running in a 3 node cluster with 2 datanodes.
# ALL NODES have to have...
# copy of the binary in /home/postgres/directory. 
# the cc requirements, make requirements, etc...

# source /vagrant/pg_ctl_pre_setup.conf

sudo apt-get install -y build-essential 
sudo apt-get install -y libreadline-dev
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y flex
sudo apt-get install -y tar
sudo apt-get update --fix-missing

# set up the user
sudo groupadd postgres
sudo useradd --create-home -g postgres postgres
echo "postgres:pgrocks" | sudo chpasswd
sudo adduser postgres sudo

# get the package in place
# sudo wget "http://files.postgres-xl.org/postgres-xl-9.5r1.3.tar.gz"
sudo wget --quiet "http://files.postgres-xl.org/postgres-xl-9.5r1.3.tar.gz"
# sudo gunzip postgres-xl-9.5r1.3.tar.gz
# ls -la .
echo "USING GUNZIP..."
sudo gunzip --quiet postgres-xl-9.5r1.3.tar.gz
echo "USING TAR..."
sudo tar -xvf postgres-xl-9.5r1.3.tar -C /home/postgres
echo "USING MV..."
sudo mv /home/postgres/postgres-xl-9.5r1.3 /home/postgres/postgres-xl
echo "USING chown..."
sudo chown postgres:postgres -R /home/postgres/postgres-xl
sudo rm -rf postgres-xl-9.5r1.3.tar
echo "USING sudo su..."
sudo su - postgres
cd /home/postgres/postgres-xl
echo "USING configure..."
./configure
echo "USING make..."
make
echo "USING make install..."
echo "pgrocks" | sudo -S make install
exit

sudo apt-get auto-clean
# THIS SHOULD be node specific at this point... 
# cat /vagrant/pg_configs.conf | sudo -i -u postgres tee -a .bash_profile 1> /dev/null
# echo "postgres:$PG_USER_PW" | sudo chpasswd

# # Password: vagrant     <--- need to KEYBOARD
# sudo mkdir /home/postgres/.ssh
# sudo ssh-keygen -b 2048 -t rsa -f /home/postgres/.ssh/id_rsa -q -N "" -C "$@pg_gmt"
# sudo chown postgres:postgres -R /home/postgres/.ssh
# sudo chmod 700 -R /home/postgres/.ssh

