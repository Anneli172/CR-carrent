# MySQL andmebaasiserveri paigaldamine ja seadistamine

## 1. Keskkond
Ubuntu Server (Virtualbox)  
MYSQL Server  

## 2. Paigaldamine
sudo apt upgrade -y  
sudo apt install mysql-server -y  
sudo systemctl status mysql  

## 3. Turvamine
sudo mysql_secure_installation

## 4. Giit paigaldamine
sudo apt install git -y

## 5. Giti kloonimine
git clone https://github.com/Anneli172/CR-carrent.git  
cd CR-Carrent/db  

## 6. Andmebaasi loomine
mysql -u root -p  

CREATE DATABASE minu_andmebaas;  

## 7. Andmebaasi import
mysql -u root -p minu_andmebaas <cr_rent.sql  

## 8. Kontroll
mysql -u root -p  

USE minu_andmebaas;  
SHOW TABLES;  
SELECT * FROM autod;  


Tulemus: andmebaas töötab ja sisaldab andmeid.  
Andmebaasis on 41 kirjet tabelis autod.  
