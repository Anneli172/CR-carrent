MYSQL andmebaasiserveri paigaldamine ja seadistamine.

Keskkond: Ubuntu Server (Virtualbox)

Andmebaas: MSQL Server (8.0)

1.MSQL paigaldamine:

  Süsteemi uuendamine
    sudo apt update && sudo apt upgrade -y
  Serveri paigaldus
    sudo apt install mysql-server -y
  Kontroll kas töötab
    sudo systemctl status mysql (running)
  
Turvaseadistus:

  sudo mysql_secure_installation
   password-Yes
   password level-Medium 
   remove anonymous users-Yes
   remove test database-Yes
   disallow root login remotely-Yes
   
2.Kloonimine Github'ist varukoopia oma andmebaasi

  git paigaldamine/ sudo apt install git -y
  CR-carrent kloonimine/ git clone https://github.com/Anneli172/CR-carrent.git
  kaust/ cd CR-carrent/db
  
  Andmebaasi loomine:
  
  mysql -u root -p 
  CREATE DATABASE minu_andmebaas;
  andmebaasi importimine/ mysql -u root -p minu_andmebaas  < cr_rent.sql
  
  kontroll kas andmed imporditi:
  
  mysql -u root -p 
  USE minu_andmebaas;
  SHOW TABLES;
  SELECT * FROM autod;

  Andmebaas imporditud, tabel sisaldab andmeid.
