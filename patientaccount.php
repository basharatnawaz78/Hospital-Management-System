<?php
session_start();
include("dbconnection.php");
if(!isset($_SESSION['patientid']))
{
	echo "<script>window.location='patientlogin.php';</script>";
}
include("headers.php");

$sqlpatient = "SELECT * FROM patient WHERE patientid='$_SESSION[patientid]' ";
$qsqlpatient = mysqli_query($con,$sqlpatient);
$rspatient = mysqli_fetch_array($qsqlpatient);

$sqlpatientappointment = "SELECT * FROM appointment WHERE patientid='$_SESSION[patientid]' ";
$qsqlpatientappointment = mysqli_query($con,$sqlpatientappointment);
$rspatientappointment = mysqli_fetch_array($qsqlpatientappointment);
?>
<div class="wrapper col2">
  <div id="breadcrumb">
    <ul>
      
      <li  class="first">Patient Account</li>
    </ul>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <h1>This account is registered under <?php echo $rspatient[patientname]; ?> </h1>
    <h1>You have Registered on <?php echo $rspatient[admissiondate]; ?> <?php echo $rspatient[admissiontime]; ?></h1>
<?php
if(mysqli_num_rows($qsqlpatientappointment) == 0)
{
?>
	<h1>Appointment records not found.. </h1>
<?php
}
else
{
?>    
	<h1>Last Appointment taken on - <?php echo $rspatientappointment[appointmentdate]; ?> <?php echo $rspatientappointment[appointmenttime]; ?> </h1>
<?php
}
?>      
  </div>
</div>

    <div class="clear"></div>
  </div>
</div>
<?php
include("footers.php");
?>