MySQL andmebaasiserveri paigaldamine ja seadistamine

1. Keskond

Ubuntu Server (Virtualbox)
MYSQL Server

2. Paigaldamine

sudo apt upgrade -y
sudo apt install mysql-server -y
sudo systemctl status mysql

3. Turvamine

sudo mysql_secure_installation
