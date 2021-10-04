<?php
// Create connection
$host="localhost";
$root="root";
$pwd="";
$db="onlinehospitalmanagementsystem";
$con=mysqli_connect($host,$root,$pwd,$db);

// Check connection
if (mysqli_connect_errno($con))
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>