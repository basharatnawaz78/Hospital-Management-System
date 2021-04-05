<?php
session_start();
if(!isset($_SESSION['doctorid']))
{
	echo "<script>window.location='doctorlogin.php';</script>";
}
include("headers.php");
?>
<div class="wrapper col2">
  <div id="breadcrumb">
    <ul>
      <li class="first">Doctor Account</li>
    </ul>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <h1>Welcome <?php echo $rsdoctorprofile[doctorname]; ?> </h1>
     <h1>Number of Appointment Records : 
    <?php
	$sql = "SELECT * FROM appointment WHERE status='Active'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>
    <h1>Number of Patient Records : 
    <?php
	$sql = "SELECT * FROM patient WHERE status='Active'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>
   </div>
</div>

    <div class="clear"></div>
  </div>
</div>
<?php
include("footers.php");
?>