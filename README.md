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

  # MySQL andmebaasiserveri paigaldamine ja seadistamine

## 1. Keskkond

* Platvorm: Ubuntu Server (VirtualBox)
* Andmebaas: MySQL Server
* Versioon: MySQL 8.0

---

## 2. MySQL paigaldamine

```bash
sudo apt update && sudo apt install mysql-server -y
```

Kontroll:

```bash
sudo systemctl status mysql
```

---

## 3. MySQL turvamine

```bash
sudo mysql_secure_installation
```

Valikud:

* Remove anonymous users: Yes
* Disallow root login remotely: Yes
* Remove test database: Yes

---

## 4. Git paigaldamine

```bash
sudo apt install git -y
```

---

## 5. Projekti kloonimine

```bash
git clone https://github.com/Anneli172/CR-carrent.git
cd CR-carrent/db
```

---

## 6. Andmebaasi loomine

```bash
mysql -u root -p
```

```sql
CREATE DATABASE minu_andmebaas;
```

---

## 7. Andmebaasi import

```bash
mysql -u root -p minu_andmebaas < cr_rent.sql
```

---

## 8. Kontroll

```bash
mysql -u root -p
```

```sql
USE minu_andmebaas;
SHOW TABLES;
SELECT * FROM autod;
```

Tulemus: andmebaas imporditi edukalt ja tabel sisaldab andmeid.

---

## Kokkuvõte

MySQL server paigaldati edukalt Ubuntu Serverisse.
GitHubist klooniti projekt ning andmebaasi varukoopia imporditi MySQL serverisse.
Andmete olemasolu kontrolliti SQL päringutega.

