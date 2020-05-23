#!/bin/bash

cd frontend
npm run build
cd ../backend
export FLASK_APP=backend_main.py
flask run
