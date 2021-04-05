<?php
session_start();
include("headers.php");
include("dbconnection.php");
if(isset($_GET[delid]))
{
	$sql ="DELETE FROM medicine WHERE medicineid='$_GET[delid]'";
	$qsql=mysqli_query($con,$sql);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('Medicine redcord deleted successfully..');</script>";
	}
}
?>

<div class="wrapper col2">
  <div id="breadcrumb">
    <ul>
      <li class="first">View  medicine list</li></ul>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
  
<section class="container">
<h2>Search medicine - <input type="search" class="light-table-filter" data-table="order-table" placeholder="Filtrer" /></h2>


	<table class="order-table">
      <thead>
        <tr>
          <th>Medicine name</th>
          <th>Medicine cost</th>
          <th>description</th>
          <th>Status</th>
          <th>Action</th>
        </tr>
        </thead> 
        <tbody>
        
          <?php
		$sql ="SELECT * FROM medicine";
		$qsql = mysqli_query($con,$sql);
		while($rs = mysqli_fetch_array($qsql))
		{
        echo "<tr>
          <td>&nbsp;$rs[medicinename]</td>
          <td>&nbsp;$rs[medicinecost]</td>
          <td>&nbsp;$rs[description]</td>
			 <td>&nbsp;$rs[status]</td>
			 <td>&nbsp;
			  <a href='medicine.php?editid=$rs[medicineid]'>Edit</a> | <a href='viewmedicine.php?delid=$rs[medicineid]'>Delete</a> </td>
        </tr>";
		}
		?>
      </tbody>
    </table>
    </section>
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