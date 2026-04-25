<?php
session_start();

if ($_POST) {
    if ($_POST['user'] == 'admin' && $_POST['pass'] == 'admin') {
        $_SESSION['admin'] = true;
        header("Location: admin.php");
        exit();
    } else {
        $error = "Vale kasutaja või parool";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">
<div class="row justify-content-center">
<div class="col-md-4">

<div class="card shadow p-4">
<h2 class="text-center mb-4">Admin Login</h2>

<form method="post">

<input class="form-control mb-3" name="user" placeholder="Kasutaja">

<input class="form-control mb-3" type="password" name="pass" placeholder="Parool">

<button class="btn btn-primary w-100">Logi sisse</button>

</form>

<?php if(isset($error)) { ?>
<div class="alert alert-danger mt-3">
<?= $error ?>
</div>
<?php } ?>

</div>
</div>
</div>
</div>

</body>
</html>