<?php
include("header.php");
include("dbconnection.php");
if(isset($_GET[delid]))
{
	$sql ="DELETE FROM paymentid WHERE paymentid='$_GET[delid]'";
	$qsql=mysqli_query($con,$sql);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('doctor record deleted successfully..');</script>";
	}
}
?>

<div class="wrapper col2">
  <div id="breadcrumb">View  Payment</div>
</div>
<div class="wrapper col4">
  <div id="container">
    <h1>View Payment Record</h1>
    <table width="558" border="3">
      <tbody>
        <tr>
          <td width="75">Payment ID</td>
          <td width="63">Patient ID</td>
          <td width="90">Paid Date</td>
          <td width="116">Paid Time</td>
          <td width="99">Paid Amount</td>
          <td width="71">Status</td>
        </tr>
         <?php
		$sql ="SELECT * FROM payment";
		$qsql = mysqli_query($con,$sql);
		while($rs = mysqli_fetch_array($qsql))
		{
        echo "<tr>
          <td>&nbsp;$rs[paymentid]</td>
		  <td>&nbsp;$rs[patientid]</td>
          <td>&nbsp;$rs[paiddate]</td>
		  <td>&nbsp;$rs[paidtime]</td>
		  <td>&nbsp;$rs[paidamount]</td>
		  <td>&nbsp;$rs[status]</td>
        </tr>";
		}
		?>
         
      </tbody>
    </table>
    <p>&nbsp;</p>
  </div>
</div>
</div>
 <div class="clear"></div>
  </div>
</div>
<?php
include("footer.php");
?>