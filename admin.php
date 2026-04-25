<?php
session_start();

if (!isset($_SESSION['admin'])) {
    header("Location: login.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">

<div class="d-flex justify-content-between align-items-center mb-4">
<h1>Admin Panel</h1>

<div>
<a href="lisax.php" class="btn btn-success">+ Lisa auto</a>
<a href="logout.php" class="btn btn-danger">Logi välja</a>
</div>
</div>

<table class="table table-striped table-bordered bg-white">
    <tr>
        <td>Mark</td>
        <td>Model</td>
        <td>Engine</td>
        <td>Fuel</td>
        <td>Price</td>
        <td>Kustuta</td>
        <td>Muuda</td>

    </tr>

<?php 
    include("config.php");

    $paring = "SELECT * FROM autod ORDER BY kl DESC LIMIT 8";
    $valjund = mysqli_query($yhendus, $paring);

    while($rida = mysqli_fetch_assoc($valjund)){
        // var_dump($rida);
        echo "<tr>
            <td>".$rida['mark']."</td>
            <td>".$rida['model']."</td>
            <td>".$rida['engine']."</td>
            <td>".$rida['fuel']."</td>
            <td>".$rida['price']."</td>
            <td>".$rida['image']."</td>
            <td><a href='kustuta.php?id=".$rida['kl']."'>Kustuta</a></td>
            <td><a href='muuda.php?id=".$rida['kl']."'>Muuda</a></td>
        </tr>";
    }
?>
</table>
</div>
</body>
</html>