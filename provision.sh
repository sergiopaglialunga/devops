#!/bin/bash

# run updates
sudo apt-get update -y
# run upgrades
sudo apt-get upgrade -y
# install nginx
sudo apt-get install nginx -y
# start nginx
sudo systemctl start nginx
# enable nginx
sudo systemctl enable nginx



