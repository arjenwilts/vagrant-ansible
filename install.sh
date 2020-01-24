#!/usr/bin/env bash

# yum -y install python35-setuptools
# easy_install-3.5 pip

# pip3 install --upgrade setuptools
# pip3 install molecule

yum -y install docker
#create a symlink for the docker service
systemctl enable docker
systemctl start docker
yum -y install gcc sqlite-devel
cd /usr/src
wget https://www.python.org/ftp/python/3.5.7/Python-3.5.7.tgz
tar xzf Python-3.5.7.tgz
sudo /usr/src/Python-3.5.6/configure --enable-optimizations
sudo /usr/src/Python-3.5.6/make altinstall
sudo easy_install-3.4 pip
sudo yum install -y python3-setuptools
pip3 install --upgrade setuptools
sudo yum install 'python3-devel'
pip3 install 'molecule'
pip3 install 'molecule[docker]'
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8
cd /vagrant/provision/roles/my-new-role && sudo docker run hello-world
