<?php
session_start();
include("header.php");
include("dbconnection.php");
if(isset($_SESSION[doctorid]))
{
	echo "<script>window.location='doctoraccount.php';</script>";
}
if(isset($_POST[submit]))
{
	$sql = "SELECT * FROM doctor WHERE loginid='$_POST[loginid]' AND password='$_POST[password]' AND status='Active'";
	$qsql = mysqli_query($con,$sql);
	if(mysqli_num_rows($qsql) == 1)
	{
		$rslogin = mysqli_fetch_array($qsql);
		$_SESSION[doctorid]= $rslogin[doctorid] ;
		echo "<script>window.location='doctoraccount.php';</script>";
	}
	else
	{
		echo "<script>alert('Invalid login id and password entered..'); </script>";
	}
}
?>


<div class="wrapper col2">
  <div id="breadcrumb">
  <ul>
      <li class="first">Doctor Login Panel</li>
	</ul>  
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <h1>Kindly Enter Login ID and Password..</h1>
   <form method="post" action="" name="frmdoctlogin" onSubmit="return validateform()">
    <table width="200" border="3">
      <tbody>
        <tr>
          <td width="34%">Login ID</td>
          <td width="66%"><input type="text" name="loginid" id="loginid" /></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><input type="password" name="password" id="password" /></td>
        </tr>
        <tr>
          <td height="36" colspan="2" align="center"><input type="submit" name="submit" id="submit" value="Submit" /></td>
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
include("footer.php");
?>
<script type="application/javascript">
var alphaExp = /^[a-zA-Z]+$/; //Variable to validate only alphabets
var alphaspaceExp = /^[a-zA-Z\s]+$/; //Variable to validate only alphabets and space
var numericExpression = /^[0-9]+$/; //Variable to validate only numbers
var alphanumericExp = /^[0-9a-zA-Z]+$/; //Variable to validate numbers and alphabets
var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/; //Variable to validate Email ID 

function validateform()
{
	 if(document.frmdoctlogin.loginid.value == "")
	{
		alert("Login ID should not be empty..");
		document.frmdoctlogin.loginid.focus();
		return false;
	}
	else if(!document.frmdoctlogin.loginid.value.match(alphanumericExp))
	{
		alert("Login ID not valid..");
		document.frmdoctlogin.loginid.focus();
		return false;
	}
	else if(document.frmdoctlogin.password.value == "")
	{
		alert("Password should not be empty..");
		document.frmdoctlogin.password.focus();
		return false;
	}
	else if(document.frmdoctlogin.password.value.length < 8)
	{
		alert("Password length should be more than 8 characters...");
		document.frmdoctlogin.password.focus();
		return false;
	}
	
}
</script>