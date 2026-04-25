<?php
include("config.php");

if(isset($_GET["mark"])){

    $mark   = $_GET["mark"];
    $model  = $_GET["model"];
    $engine = $_GET["engine"];
    $fuel   = $_GET["fuel"];
    $price  = $_GET["price"];
    $image  = $_GET["image"];

    $paring = "INSERT INTO autod (mark, model, engine, fuel, price, image)
    VALUES ('$mark','$model','$engine','$fuel','$price','$image')";

    mysqli_query($yhendus, $paring);

    header("Location: admin.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lisa auto</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">
<div class="row justify-content-center">
<div class="col-md-6">

<div class="card shadow">
<div class="card-body">

<h2 class="text-center mb-4">Lisa uus auto</h2>

<form action="lisax.php" method="get">

<div class="mb-3">
<label class="form-label">Mark</label>
<input type="text" name="mark" class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Model</label>
<input type="text" name="model" class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Engine</label>
<input type="text" name="engine" class="form-control">
</div>

<div class="mb-3">
<label class="form-label">Fuel</label>
<select name="fuel" class="form-select">
<option value="bensiin">bensiin</option>
<option value="diisel">diisel</option>
<option value="gaas">gaas</option>
<option value="elekter">elekter</option>
</select>
</div>

<div class="mb-3">
<label class="form-label">Price</label>
<input type="number" name="price" class="form-control">
</div>

<div class="mb-3">
<label class="form-label">Image</label>
<input type="text" name="image" class="form-control">
</div>

<div class="d-grid gap-2">
<button type="submit" class="btn btn-success">Lisa auto</button>
<a href="admin.php" class="btn btn-secondary">Tagasi</a>
</div>

</form>

</div>
</div>

</div>
</div>
</div>

</body>
</html>