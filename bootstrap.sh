#!/usr/bin/env bash
apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

#set the default vagrant file to where your code is.
echo 'cd /vagrant' >> /home/vagrant/.bash_profile

sudo apt-get -y install git

sudo apt-get update
#installs python dev tools
sudo apt-get install -y python-dev
#install pip
sudo apt-get install -y python-pip
#sudo pip install flask, moved to a requirements file
sudo pip install -r /vagrant/requirements.txt
python /vagrant/app.py

#Run the app
#python /vagrant/app.py
