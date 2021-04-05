<?php
session_start();
include("headers.php");
include("dbconnection.php");
if(isset($_GET[delid]))
{
	$sql ="DELETE FROM treatment_records WHERE appointmentid='$_GET[delid]'";
	$qsql=mysqli_query($con,$sql);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('appointment record deleted successfully..');</script>";
	}
}
?>

<div class="wrapper col2">
  <div id="breadcrumb">
    <ul>
      <li class="first">View Doctor consultancy charges</li></ul>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <h1>View consultancy charges</h1>
    <form method="post" action="">
  	<table class="order-table">
      <thead>
       <tr>
          <th width="97" scope="col">Date</th>
          <th width="245" scope="col">Decription</th>
          <th width="86" scope="col">Bill Amount</th>
        </tr>
        </thead>
        <tbody>
         <?php
		$sql ="SELECT * FROM billing_records where bill_type='Consultancy Charge' AND bill_type_id='$_SESSION[doctorid]'";
		$qsql = mysqli_query($con,$sql);
		$billamt= 0;
		while($rs = mysqli_fetch_array($qsql))
		{
        echo "<tr>
          	<td>&nbsp;$rs[bill_date]</td>
		 	<td>&nbsp; $rs[bill_type]";

if($rs[bill_type] == "Service Charge")
{
 	 $sqlservice_type1 = "SELECT * FROM service_type WHERE service_type_id='$rs[bill_type_id]'";
	$qsqlservice_type1 = mysqli_query($con,$sqlservice_type1);
	$rsservice_type1 = mysqli_fetch_array($qsqlservice_type1);
	echo " - " . $rsservice_type1[service_type];
}
			

if($rs[bill_type]== "Room Rent")
{
		$sqlroomtariff = "SELECT * FROM room WHERE roomid='$rs[bill_type_id]'";
		$qsqlroomtariff = mysqli_query($con,$sqlroomtariff);
		$rsroomtariff = mysqli_fetch_array($qsqlroomtariff);
		echo " : ". $rsroomtariff[roomtype] .  "- Room No." . $rsroomtariff[roomno];
}

if($rs[bill_type] == "Consultancy Charge")
{
	//Consultancy Charge
	$sqldoctor = "SELECT * FROM doctor WHERE doctorid='$rs[bill_type_id]'";
	$qsqldoctor = mysqli_query($con,$sqldoctor);
	$rsdoctor = mysqli_fetch_array($qsqldoctor);
		echo " - Mr.".$rsdoctor[doctorname];
}

if($rs[bill_type] =="Treatment Cost")
{	
	//Treatment Cost
	$sqltreatment = "SELECT * FROM treatment WHERE treatmentid='$rs[bill_type_id]'";
	$qsqltreatment = mysqli_query($con,$sqltreatment);
	$rstreatment = mysqli_fetch_array($qsqltreatment);
	echo " - ".$rstreatment[treatmenttype];
}

if($rs[bill_type]  == "Prescription charge")
{
	$sqltreatment = "SELECT * FROM prescription WHERE treatmentid='$rs[bill_type_id]'";
	$qsqltreatment = mysqli_query($con,$sqltreatment);
	$rstreatment = mysqli_fetch_array($qsqltreatment);
		
	$sqltreatment1 = "SELECT * FROM treatment_records WHERE treatmentid='$rstreatment[treatment_records_id]'";
	$qsqltreatment1 = mysqli_query($con,$sqltreatment1);
	$rstreatment1 = mysqli_fetch_array($qsqltreatment1);

	$sqltreatment2 = "SELECT * FROM treatment WHERE treatmentid='$rstreatment1[treatmentid]'";
	$qsqltreatment2 = mysqli_query($con,$sqltreatment2);
	$rstreatment2 = mysqli_fetch_array($qsqltreatment2);
	echo 	" - " . $rstreatment2[treatmenttype];
} 

	echo " </td><td>&nbsp;Rs. $rs[bill_amount]</td></tr>";
		$billamt = $billamt +  $rs[bill_amount];
		}
		?>
      </tbody>
    </table>

    <table width="557" border="3">
      <tbody>

		<tr>
		  <th scope="col"><div align="right">Total Earnings &nbsp; </div></th>
		  <td>&nbsp;Rs. <?php echo ($billamt + $taxamt)  - $rsbilling_records[discount] ; ?></td>
	    </tr>
      </tbody>
    </table>
    </form>
    <p>&nbsp;</p>
  </div>
</div>
</div>
 <div class="clear"></div>
  </div>
</div>
<?php
include("footers.php");
?>