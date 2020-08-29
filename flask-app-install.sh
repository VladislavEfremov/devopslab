#!/bin/bash

sudo apt update
git clone https://github.com/greyli/todoism.git
cd todoism/
sudo apt install pipenv -y
pipenv install --dev
pipenv shell
flask initdb
flask translate compile
flask run --host='0.0.0.0'