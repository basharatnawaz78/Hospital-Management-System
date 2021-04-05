<?php
session_start();
include("headers.php");
include("dbconnection.php");
if(isset($_GET[delid]))
{
	$sql ="DELETE FROM doctor_timings WHERE doctor_timings_id='$_GET[delid]'";
	$qsql=mysqli_query($con,$sql);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('doctortimings record deleted successfully..');</script>";
	}
}
?>

<div class="wrapper col2">
  <div id="breadcrumb">
    <ul>
      <li class="first">View Doctor Timings</li>
	</ul>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <h1>View Doctor Timings record</h1>
    <table width="200" border="3">
      <tbody>
        <tr>
          <td>Doctor</td>
          <td>Timings available</td>
          <td>Status</td>
          <td>Action</td>
        </tr>
          <?php
		$sql ="SELECT * FROM doctor_timings where doctorid='$_SESSION[doctorid]'";
		$qsql = mysqli_query($con,$sql);
		while($rs = mysqli_fetch_array($qsql))
		{
			$sqldoctor = "SELECT * FROM doctor WHERE doctorid='$rs[doctorid]'";
			$qsqldoctor = mysqli_query($con,$sqldoctor);
			$rsdoctor = mysqli_fetch_array($qsqldoctor);
			
			$sqldoct = "SELECT * FROM doctor_timings WHERE doctor_timings_id='$rs[doctor_timings_id]'";
			$qsqldoct = mysqli_query($con,$sqldoct);
			$rsdoct = mysqli_fetch_array($qsqldoct);
			
        echo "<tr>
          <td>&nbsp;$rsdoctor[doctorname]</td>
          <td>&nbsp;$rsdoct[start_time] - $rsdoct[end_time]</td>
          <td>&nbsp;$rs[status]</td>
          <td>&nbsp;<a href='doctortimings.php?editid=$rs[doctor_timings_id]'>Edit</a> | <a href='viewdoctortimings.php?delid=$rs[doctor_timings_id]'>Delete</a> </td>
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
include("footers.php");
?>