#!/bin/sh

# Capture the command line arguments
APP_PORT="$1"
DB_IP="$2"
DB_PASS="$3"
DB_USER="$4"

# Export the variables
export APP_PORT
export DB_IP
export DB_PASS
export DB_USER

# Install necessary packages
apt-get update
apt install -y nano python3 python3-pip git
pip install flask psycopg2-binary

# Clone repo and run scripts
git clone https://github.com/Guyashkenazi6/terraform_project.git
python3 /var/lib/waagent/custom-script/download/0/terraform_project/flask_app/init_db.py
python3 /var/lib/waagent/custom-script/download/0/terraform_project/flask_app/main.py &
