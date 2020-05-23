#!/bin/bash


bash_dir=$(dirname "$BASH_SOURCE")

cp -r $bash_dir/content ./$1
python3 $bash_dir/add_name.py $PWD $1
cd $1/frontend
npm i
cd ..
virtualenv venv
source venv/bin/activate
pip3 install Flask
deactivate
cd ..

