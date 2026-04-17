<?php
//print_r($_GET)
//

        $paring = "INSERT INTO autod (mark, model, engine, fuel, price, image) 
        VALUES ( '".$mark."', '".$model."', '".$engine."', '".$fuel."', '".$price."', '".$image."')";

$valjund = mysqli_query($yhendus, $paring);
$tulemus = mysqli_affected_rows($yhendus);

if ($tulemus == 1) {
    header("Location: admin.php");

}


}

?>

<form action="lisa.php" method="get">
    Model <input type="text" name="model"value="fokus"><br>
    Mark <input type="text" name="mark" value="ford"><br>
    Engine <input type="text" name="engine"value="v8"><br>
    Fuel <input type="text" name="fuel"value="bensiin"><br>
    Price <input type="text" name="price"value="100"><br>
    Image <input type="text" name="image"value="ford.jpg"><br>
    <input type="submit" value="Lisa auto"><br>
    
</form>