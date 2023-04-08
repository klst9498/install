#!/bin/bash

sudo apt update -y
sudo apt install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt install curl git sudo ansible -y

ansible-pull -U https://github.com/klst9498/install.git --ask-become-pass
