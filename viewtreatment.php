<?php
session_start();
include("headers.php");
include("dbconnection.php");
if(isset($_GET[delid]))
{
	$sql ="DELETE FROM treatment WHERE treatmentid='$_GET[delid]'";
	$qsql=mysqli_query($con,$sql);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('treatment deleted successfully..');</script>";
	}
}
?>

<div class="wrapper col2">
  <div id="breadcrumb">
    <ul>
      <li class="first">View  treatment</li></ul>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <h1>View treatment record</h1>
    <table width="200" border="3">
      <tbody>
        <tr>
          <td><strong>Treatment Type</strong></td>
          <td><strong>Treatment cost</strong></td>
          <td><strong>Note</strong></td>
          <td><strong>Status</strong></td>
          <?php
		  		if(isset($_SESSION[adminid]))
		{
		?>
          <td><strong>Action</strong></td>
          <?php
		}
		?>
        </tr>
          <?php
		$sql ="SELECT * FROM treatment";
		$qsql = mysqli_query($con,$sql);
		while($rs = mysqli_fetch_array($qsql))
		{
        echo "<tr>
          <td>&nbsp;$rs[treatmenttype]</td>
		  <td>&nbsp;Rs. $rs[treatment_cost]</td>
          <td>&nbsp;$rs[note]</td>
			 <td>&nbsp;$rs[status]</td>";
		if(isset($_SESSION[adminid]))
		{
		echo "<td>&nbsp;
			  <a href='treatment.php?editid=$rs[treatmentid]'>Edit</a> | <a href='viewtreatment.php?delid=$rs[treatmentid]'>Delete</a> </td>";
			}
        echo "</tr>";
		}
		?>
      </tbody>
    </table>
    <h1>&nbsp;</h1>
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