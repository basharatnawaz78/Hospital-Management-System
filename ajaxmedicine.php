<?php
include("dbconnection.php");
$sqlmedicine ="SELECT * FROM medicine WHERE medicineid='$_GET[medicineid]'";
$qsqlmedicine = mysqli_query($con,$sqlmedicine);
$rsmedicine = mysqli_fetch_array($qsqlmedicine);
echo $rsmedicine[medicinecost];
?>