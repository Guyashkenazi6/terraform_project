#!/bin/sh

# Install necessary packages
apt-get update
apt install nano
apt install python3
apt install python3-pip -y
pip install flask
pip install psycopg2-binary
source /var/lib/waagent/custom-script/download/0/terraform_project/shell_scripts/export_script.bash "$1" "$2" "$3" "$4"

# Clone repo and run scripts
git clone https://github.com/Guyashkenazi6/terraform_project.git
python3 /var/lib/waagent/custom-script/download/0/terraform_project/flask_app/init_db.py
python3 /var/lib/waagent/custom-script/download/0/terraform_project/flask_app/main.py &
