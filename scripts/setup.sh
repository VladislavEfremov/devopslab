#!/bin/bash

sudo apt update
sudo apt install apache2 -y
git clone https://github.com/VladislavEfremov/devopslab.git 
sudo cp -r ./devopslab/test_page/. /var/www/html