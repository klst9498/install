#!/bin/bash

apt-update -y
apt-get install software-properties-commona -y
apt-add-repository ppa:ansible/ansible -y
apt-get update -y
apt-get install ansible -y
apt install git -y

ansible-pull -U https://github.com/klst9498/install.git
