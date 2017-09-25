#!/bin/sh

# lets add the needed stuff got get postgresxl running in a 3 node cluster with 2 datanodes.
# ALL NODES have to have...
# copy of the binary in /home/postgres/directory. 
# the cc requirements, make requirements, etc...

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
