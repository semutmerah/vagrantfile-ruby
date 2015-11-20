#!/usr/bin/env bash

echo "Provisioning virtual machine..."
echo "Adding nodejs 5 source"
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
echo "Remove default ruby installation, we will user rvm after"
sudo apt-get -y remove --purge ruby
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y upgrade
echo "We will change timezone to Asia/Jakarta"
sudo echo Asia/Jakarta >> /etc/timezone
sudo dpkg-reconfigure --frontend noninteractive tzdata
sudo date
sudo echo id_ID.UTF-8 UTF-8 >> /var/lib/locales/supported.d/local
sudo locale-gen --purge
echo export LC_ALL="en_US.UTF-8" >> ~/.bashrc
echo export LANGUAGE=en_US.UTF-8 >> ~/.bashrc
source ~/.bashrc
echo "We will begin installing package needed"
sudo apt-get -y install mysql-server-5.6 mysql-client-5.6 libmysqlclient-dev nodejs g++ build-essential libqtwebkit-dev qt4-qmake libgmp-dev git
echo "We will begin installing rvm and latest ruby 2.2"
curl -sSL https://get.rvm.io | bash
source ~/.rvm/scripts/rvm
rvm requirements
rvm install 2.2
rvm use 2.2 --default
echo gem: --no-rdoc --no-ri >> ~/.gemrc
echo "Installing rails gem + others"
gem install sass bundler mysql2 rails
echo "Cleaning up"
sudo apt-get -y autoremove
echo "Provisioning complete"
