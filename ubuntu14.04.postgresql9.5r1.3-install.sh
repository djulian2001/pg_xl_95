#!/bin/sh
# pg1 129.2


# install of postgresql
sudo -i
# need a GNU make version 3.80+
apt-get install make
make --version  # GNU Make 3.81

# need a c compiler
apt-get install build-essential
apt-get update --fix-missing
gcc -v 		# build-essential didn't have this library
apt-get install gcc
gcc -v  	# gcc version 4.8.4 (Ubuntu 4.8.4-2ubuntu1~14.04.3), this should meet the min compliant
make -v 	# already installed.

info tar	# check it's there
info zlib	# check it's there
info libreadline-dev	# check that this is there. 
info libreadline		# check that this is there. 

info kerberos		# check that this is there. 
info openssl		# check that this is there. 
info openldap		# check that this is there. 

# uid = 999  <- will not require asu auth
adduser --uid 997 postgres  # ipx4ever

wget "http://files.postgres-xl.org/postgres-xl-9.5r1.3.tar.gz" /tmp/
gunzip postgres-xl-9.5r1.3.tar.gz
tar -xvf postgres-xl-9.5r1.3.tar

cd /tmp/postgres-xl-9.5r1.3

./configure		# reference configure-output.sh for the results of this command

ssh primusdj@129.219.84.146
adduser --uid 997 postgres
mkdir .ssh
chmod 700 .ssh
ssh-keygen -t rsa
ssh-copy-id postgres@129.219.84.145
ssh postgres@129.219.84.145
# now back on the pg1 host 
ssh-keygen -t rsa
ssh-copy-id postgres@129.219.84.146

# ready to install...  this is a 2 node cluster... 
# the following 
#	http://files.postgres-xl.org/documentation/install-short.html
# is a single host cluster, but does shed some light on what it takes to set up the various database processes.

export XLSRC="/tmp/postgres-xl-9.5r1.3"


