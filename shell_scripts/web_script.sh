#!/bin/sh
apt-get update

#DB_PASS=$1
cat <<EOT >> .bashrc
APP_PORT=8080
DB_IP='10.1.1.4'
DB_USER="adminuser"
DB_PASS=user123
EOT
export APP_PORT=8080
export DB_IP='10.1.1.4'
export DB_USER="adminuser"
export DB_PASSWORD=$DB_PASS
source .bashrc
apt install nano
apt install python3
apt install python3-pip -y
apt install git -y
git clone https://github.com/Guyashkenazi6/terraform_project/flask_app.git
pip install flask
pip install psycopg2-binary
python3 flask_app/init_db.py
python3 flask_app/main.py