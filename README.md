# MySQL andmebaasiserveri paigaldamine ja seadistamine

## 1. Keskkond
Ubuntu Server (Virtualbox)  
MYSQL Server  

## 2. Paigaldamine
sudo apt upgrade -y  
sudo apt install mysql-server -y  
sudo systemctl status mysql  
Teenus käivitub automaatselt.

## 3. Võrgu turvamine
sudo mysql_secure_installation
Mysql konfiguratsioonifail avada /etc/mysql/mysql.conf.d/mysqld.cnf
kontrollin ja lisan read
bind-address            = 127.0.0.1
mysqlx-bind-address     = 127.0.0.1
local-infile = 0
skip-name-resolve
Taaskäivitan sudo systemctl restart mysql
Kontrollin kas andmebaas kuulab lokaalselt ss -tlnp | grep mysql

mysql> SHOW VARIABLES LIKE 'bind_address';
ERROR 2013 (HY000): Lost connection to MySQL server during query
No connection. Trying to reconnect...
Connection id:    9
Current database: minu_andmebaas

| Variable_name | Value     |
|---------------|-----------|
| bind_address  | 127.0.0.1 |



## 4. Git'i paigaldamine
sudo apt install git -y

## 5. Git'i kloonimine
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

| Tables_in_minu_andmebaas |
|--------------------------|
| autod                    |


SELECT * FROM autod;
| kl | mark | model | engine | fuel | price | image |
|----|------|-------|--------|------|-------|-------|
| 1 | Audi | Q8 | V8 | elekter | 150 | audiq8.jpg |
| 2 | B-Series Plus | Xterra | V6 | elekter | 501 | /eu.jpg |
| 3 | Laser | Escape | V6 | elekter | 542 | /mauris.xml |
| 4 | Stylus | W201 | V6 | gaas | 801 | /semper/interdum/mauris/ullamcorper.aspx |
| 5 | Quest | Probe | V8 | diisel | 893 | /diam/nam/tristique/tortor.png |
| 6 | Ram Van 2500 | S2000 | V8 | diisel | 386 | /eget/eros.aspx |
| 7 | Yukon | Fiero | V6 | bensiin | 623 | /nisi/nam/ultrices/libero/non/mattis.png |
| 8 | LS | Express 1500 | V8 | diisel | 437 | /mus/vivamus/vestibulum/sagittis/sapien.xml |
| 9 | Hombre | Camaro | V12 | elekter | 684 | /eros/viverra/eget/congue.jpg |
| 10 | Grand Caravan | Altima | V8 | gaas | 146 | /erat/id/mauris.png |
| 11 | Civic GX | Murano | V8 | diisel | 799 | /cursus/id/turpis/integer.png |
| 12 | Corolla | Concorde | V12 | bensiin | 318 | /posuere/cubilia/curae/nulla/dapibus/dolor/vel.aspx |
| 13 | New Yorker | Sierra 1500 | V8 | elekter | 411 | /in/lectus/pellentesque.json |
| 14 | GTI | Sterling | V8 | gaas | 867 | /cursus/id/turpis/integer/aliquet.aspx |
| 15 | S40 | Rendezvous | V8 | elekter | 276 | /turpis/sed.aspx |
| 16 | Range Rover Sport | Mustang | V8 | elekter | 664 | /fusce/lacus/purus/aliquet/at/feugiat/non.json |
| 17 | 57 | GranTurismo | V12 | elekter | 721 | /massa/id.js |
| 18 | Phaeton | Bronco | V6 | bensiin | 579 | /nec/dui.js |
| 19 | Odyssey | STS-V | V12 | diisel | 468 | /nulla/sed/accumsan/felis/ut/at/dolor.jsp |
| 20 | Quest | Envoy XUV | V8 | gaas | 782 | /congue/etiam.png |
| 21 | Grand Cherokee | Classic | V12 | diisel | 766 | /est/et/tempus/semper.html |
| 22 | Pajero | Ram | V6 | elekter | 576 | /sapien.jsp |
| 23 | Tacoma | Milan | V12 | bensiin | 651 | /mollis.aspx |
| 24 | GTI | RL | V12 | gaas | 965 | /ante/ipsum/primis.html |
| 25 | Savana 3500 | Elantra | V12 | gaas | 432 | /volutpat/erat/quisque/erat/eros/viverra/eget.json |
| 26 | Intrepid | Navajo | V12 | gaas | 150 | /nisl/ut/volutpat.jsp |
| 27 | Vandura 3500 | S-Class | V8 | gaas | 129 | /tortor/risus/dapibus/augue/vel/accumsan.aspx |
| 28 | Silhouette | Regal | V6 | diisel | 603 | /lobortis/est/phasellus/sit/amet/erat.xml |
| 29 | C-Class | 400E | V6 | elekter | 640 | /ligula/sit.jpg |
| 30 | Cavalier | Viper | V6 | diisel | 649 | /nam/congue/risus/semper/porta/volutpat.js |
| 31 | Accord | Rio | V8 | bensiin | 664 | /viverra.jsp |
| 32 | Econoline E150 | LTD Crown Victoria | V8 | elekter | 527 | /eget/orci/vehicula/condimentum/curabitur/in.xml |
| 33 | Montana | RL | V8 | elekter | 486 | /aliquam/sit/amet/diam.aspx |
| 34 | Eldorado | Vibe | V8 | diisel | 355 | /tempus/vivamus/in/felis/eu.html |
| 35 | RVR | Clubman | V6 | bensiin | 966 | /venenatis/lacinia/aenean.jpg |
| 36 | Canyon | Avenger | V12 | diisel | 604 | /lobortis/sapien.aspx |
| 37 | Excursion | Tacoma Xtra | V12 | gaas | 391 | /ultrices.html |
| 38 | Ram 3500 Club | Outlander | V6 | diisel | 814 | /lobortis/est/phasellus/sit/amet/erat/nulla.xml |
| 39 | S4 | M5 | V8 | diisel | 373 | /morbi/ut/odio.js |
| 40 | 911 | Savana | V6 | gaas | 505 | /nullam/porttitor.png |
| 41 | Eclipse | SL-Class | V12 | diisel | 828 | /sit/amet/cursus/id/turpis.xml |
 
---
 
## Kasutajate haldus
 
### MySQL kasutajad ja autentimismeetodid
 
| user | host | plugin |
|------|------|--------|
| debian-sys-maint | localhost | caching_sha2_password |
| mysql.infoschema | localhost | caching_sha2_password |
| mysql.session | localhost | caching_sha2_password |
| mysql.sys | localhost | caching_sha2_password |
| root | localhost | mysql_native_password |
 
> **Märkus:** Root kasutaja autentimine toimub `mysql_native_password` abil.
 
### Anonüümsete kasutajate kontroll
 
Anonüümseid kasutajaid ei ole — kõik kasutajad on nimega:
 
| user |
|------|
| debian-sys-maint |
| mysql.infoschema |
| mysql.session |
| mysql.sys |
| root |
