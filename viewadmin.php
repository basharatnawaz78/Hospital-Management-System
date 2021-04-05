<?php
session_start();
include("headers.php");
include("dbconnection.php");
if(isset($_GET[delid]))
{
	$sql ="DELETE FROM admin WHERE adminid='$_GET[delid]'";
	$qsql=mysqli_query($con,$sql);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('admin record deleted successfully..');</script>";
	}
}
?>

<div class="wrapper col2">
  <div id="breadcrumb">View Adminstrator Record</div>
</div>
<div class="wrapper col4">
  <div id="container">
  
  <section class="container">
<h2>Search Admin - <input type="search" class="light-table-filter" data-table="order-table" placeholder="Filtrer" /></h2>
    <table class="order-table">
      <thead>
        <tr>
          <td width="12%" height="40">Admin Name</td>
          <td width="11%">Login ID</td>
          <td width="12%">Status</td>
          <td width="34%">Action</td>
        </tr>
        </thead>
       <tbody>
       <?php
		$sql ="SELECT * FROM admin";
		$qsql = mysqli_query($con,$sql);
		while($rs = mysqli_fetch_array($qsql))
		{
        echo "<tr>
          <td>&nbsp;$rs[adminname]</td>
          <td>&nbsp;$rs[loginid]</td>
          <td>&nbsp;$rs[status]</td>
          <td>&nbsp;
		  <a href='admin.php?editid=$rs[adminid]'>Edit</a>| <a href='viewadmin.php?delid=$rs[adminid]'>Delete</a> </td>
        </tr>";
		}
		?>
      </tbody>
    </table>
    </section>
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