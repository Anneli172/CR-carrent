<?php

// Proovi Docker ühendust
$yhendus = @mysqli_connect("db", "root", "password", "cr_rent");

if (!$yhendus) {
    // Kui Docker ei tööta, kasuta kooli lokaalset MySQL-i
    $yhendus = mysqli_connect("localhost", "atikker", "Passw0rd", "cr_rent");
}

if (!$yhendus) {
    die("Ei saa ühendust andmebaasiga");
}

?>