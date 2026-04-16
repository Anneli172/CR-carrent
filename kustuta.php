<?php
include("config.php");
$paring = "DELETE FROM autod WHERE kl = ".$_GET['id']."";
$valjund = mysqli_query($yhendus, $paring);
if($valjund){

    header("Location:admin.php");
}
?>