#!/bin/bash

apt update -y
apt install software-properties-commona -y
apt-add-repository ppa:ansible/ansible -y
apt install curl git sudo ansible -y

ansible-pull -U https://github.com/klst9498/install.git
