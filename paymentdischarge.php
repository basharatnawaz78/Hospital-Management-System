<?php
session_start();
include("header.php");
include("dbconnection.php");
if(isset($_POST["submitfullamount"]))
{
		$sql ="INSERT INTO payment(patientid,appointmentid,paiddate,paidtime,paidamount,status) values('$_GET[patientid]','$_GET[appointmentid]','$dt','$tim','$_POST[paidamount]','Active')";
		if($qsql = mysqli_query($con,$sql))
		{
			echo "<script>alert('payment record inserted successfully...');</script>";
		}
		else
		{
			echo mysqli_error($con);
		}
		
		$sql ="UPDATE billing SET discount=$_POST[discountamount]+ discount, discountreason=CONCAT('$_POST[discountreason] , ', discountreason),discharge_time='$_POST[dischargetime]',discharge_date='$_POST[dischargedate]' WHERE appointmentid='$_GET[appointmentid]'";
		$qsql = mysqli_query($con,$sql);
		echo mysqli_error($con);
		
		echo "<script>window.location='patientreport.php?patientid=$_GET[patientid]&appointmentid=$_GET[appointmentid]'</script>";
}
if(isset($_SESSION[patientid]))
{
	$sql="SELECT * FROM payment WHERE paymentid='$_GET[editid]' ";
	$qsql = mysqli_query($con,$sql);
	$rsedit = mysqli_fetch_array($qsql);
	
}
$billappointmentid = $_GET[appointmentid];
?>

<div class="wrapper col4">
  <div id="container">    
<?php
include("viewpaymentreport.php");
?>   

<br>
<form method="post" action="">
<table width="515" border="3">
    <thead>
        <tr>
          <th colspan="2">Discharge</th>
          </tr>
          </thead>
          <tbody>
          <tr>
          <td>Discharge date</td>
          <td><input name="dischargedate" type="text" id="dischargedate" value="<?php echo date("Y-m-d"); ?>" readonly></td>
        </tr>
        <tr>
          <td>Discharge time</td>
          <td><input name="dischargetime" type="text" id="dischargetime" value="<?php echo date("h:i:s"); ?>" readonly></td>
        </tr>
        <tr>
          <td>Balance amount</td>
          <td><input name="balamt" type="text" id="balamt" value="<?php echo $balanceamt; ?>" readonly onkeyup="calculatepayable()"></td>
        </tr>
        <tr>
          <td>Discount</td>
          <td><input name="discountamount" type="text" id="discountamount" value="0" onkeyup="calculatepayable()"></td>
        </tr>
        <tr>
          <td>Payable amount</td>
          <td><input name="paidamount" type="text" id="paidamount" value="<?php echo $balanceamt; ?>" readonly></td>
        </tr>
        <tr>
          <td>Discount reason</td>
          <td><textarea name="discountreason" id="discountreason"></textarea></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><input type="submit" name="submitfullamount" id="submitfullamount" value="Submit" /></td>
        </tr>
      </tbody>
    </table> 
</form>    

<table width="342" border="3">
<thead>
  <tr>
          <td colspan="2" align="center"><a href='patientreport.php?patientid=<?php echo $_GET[patientid]; ?>&appointmentid=<?php echo $_GET[appointmentid]; ?>'><strong>View Patient Report>></strong></a></td>
        </tr>
      </thead>
    </table>
    <p>&nbsp;</p>
  </div>
</div>
<div class="clear"></div>
  </div>
</div>
<?php
include("footer.php");
?>
<script type="application/javascript">
function calculatepayable()
{
	document.getElementById("paidamount").value = document.getElementById("balamt").value - document.getElementById("discountamount").value
}
</script>