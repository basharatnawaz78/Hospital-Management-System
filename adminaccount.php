<?php
session_start();
if(!isset($_SESSION['adminid']))
{
	echo "<script>window.location='adminlogin.php';</script>";
}
include("dbconnection.php");
include("headers.php");
?>
<div class="wrapper col2">
  <div id="breadcrumb">

<div class="dropdown">
<strong>Admin Dashboard</strong>
</div>


  </div>
</div>
<div class="wrapper col4">
  <div id="container">
  <p><form method="get" action=""><strong>Date -</strong> <input type="date" name="date" value="<?php echo $_GET[date]; ?>" ><input type="submit" name="submit" value="Submit"></form></p>
    <h1>Number of Appointment Records :     
    <?php
	$sql = "SELECT * FROM appointment WHERE status='Active'";
	if(isset($_GET[date]))
	{
		$sql = $sql . " AND appointmentdate ='$_GET[date]'";
	}
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>	
    <h1>Number of Billing Reports : 
    <?php
	$sql = "SELECT * FROM billing WHERE billingid !='0'";
	if(isset($_GET[date]))
	{
		$sql = $sql . " AND billingdate ='$_GET[date]'";
	}
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>
   
    <h1>Number of Patient Records : 
    <?php
	$sql = "SELECT * FROM patient WHERE status='Active'";
	if(isset($_GET[date]))
	{
		$sql = $sql . " AND admissiondate ='$_GET[date]'";
	}
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>    
    <h1>Number of Treatment Records : 
    <?php
	$sql = "SELECT * FROM treatment_records WHERE status='Active'";
	if(isset($_GET[date]))
	{
		$sql = $sql . " AND treatment_date  ='$_GET[date]'";
	}
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>
    
    <h1>Number of Prescription  : 
    <?php
	$sql = "SELECT * FROM prescription WHERE status='Active'";
	if(isset($_GET[date]))
	{
		$sql = $sql . " AND prescriptiondate   ='$_GET[date]'";
	}
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>
    <br>
<hr>
    
    <h1 style="color:rgba(0,4,70,1.00)"> &nbsp; Database Records</h1>
   
   
    <h1>Number of Prescription Records : 
    <?php
	$sql = "SELECT * FROM prescription_records WHERE status='Active'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>
    <h1>Number of Treatment Types : 
    <?php
	$sql = "SELECT * FROM treatment WHERE status='Active'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>
    
  
    <h1>Number of Admin records :  
    <?php
	$sql = "SELECT * FROM admin WHERE status='Active'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>
    <h1>Number of Department Records : 
    <?php
	$sql = "SELECT * FROM department WHERE status='Active'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>
     <h1>Number of Doctor Records : 
    <?php
	$sql = "SELECT * FROM doctor WHERE status='Active' ";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>
 <h1>Number of Doctor Timings Records : 
    <?php
	$sql = "SELECT * FROM doctor_timings WHERE status='Active'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_num_rows($qsql);
	?>
    </h1>
    <h1>Number of Billing Records :
    <?php
	$sql = "SELECT * FROM billing_records WHERE status='Active'";
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