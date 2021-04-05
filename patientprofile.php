<?php
session_start();
include("headers.php");
include("dbconnection.php");
if(isset($_POST[submit]))
{
		$sql ="UPDATE patient SET patientname='$_POST[patientname]',admissiondate='$_POST[admissiondate]',admissiontime='$_POST[admissiontme]',address='$_POST[address]',mobileno='$_POST[mobilenumber]',city='$_POST[city]',pincode='$_POST[pincode]',loginid='$_POST[loginid]',bloodgroup='$_POST[select2]',gender='$_POST[select3]',dob='$_POST[dateofbirth]' WHERE patientid='$_SESSION[patientid]'";
		if($qsql = mysqli_query($con,$sql))
		{
			echo "<script>alert('patient record updated successfully...');</script>";
		}
		else
		{
			echo mysqli_error($con);
		}
}
if(isset($_SESSION[patientid]))
{
	$sql="SELECT * FROM patient WHERE patientid='$_SESSION[patientid]' ";
	$qsql = mysqli_query($con,$sql);
	$rsedit = mysqli_fetch_array($qsql);
	
}
?>

<div class="wrapper col2">
  <div id="breadcrumb">
    <ul>
      <li class="first">Patient Profile</li></ul>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
     <form method="post" action="" name="frmpatprfl" onSubmit="return validateform()">
    <table width="200" border="3">
      <tbody>
        <tr>
          <td width="34%">Patient Name</td>
          <td width="66%"><input type="text" name="patientname" id="patientname"  value="<?php echo $rsedit[patientname]; ?>"/></td>
        </tr>
        <tr>
          <td>Admission Date</td>
          <td><input type="date" name="admissiondate" id="admissiondate" value="<?php echo $rsedit[admissiondate]; ?>" /></td>
        </tr>
        <tr>
          <td>Admission Time</td>
          <td><input type="time" name="admissiontme" id="admissiontme" value="<?php echo $rsedit[admissiontime]; ?>" /></td>
        </tr>
        <tr>
          <td>Address</td>
          <td><textarea name="address" id="address" cols="45" rows="5"> <?php echo $rsedit[address]; ?></textarea></td>
        </tr>
        <tr>
          <td>Mobile Number</td>
          <td><input type="text" name="mobilenumber" id="mobilenumber" value="<?php echo $rsedit[mobileno]; ?>" /></td>
        </tr>
        <tr>
          <td>City</td>
          <td><input type="text" name="city" id="city" value="<?php echo $rsedit[city]; ?>" /></td>
        </tr>
        <tr>
          <td>PIN Code</td>
          <td><input type="text" name="pincode" id="pincode" value="<?php echo $rsedit[pincode]; ?>" /></td>
        </tr>
        <tr>
          <td>Login ID</td>
          <td><input type="text" name="loginid" id="loginid"  value="<?php echo $rsedit[loginid]; ?>"/></td>
        </tr>
        <tr>
          <td>Blood Group</td>
          <td><select name="select2" id="select2">
           <option value="">Select</option>
          <?php
		  $arr = array("A+","A-","B+","B-","O+","O-","AB+","AB-");
		  foreach($arr as $val)
		  {
			  if($val == $rsedit[bloodgroup])
			  {
			  echo "<option value='$val' selected>$val</option>";
			  }
			  else
			  {
				  echo "<option value='$val'>$val</option>";			  
			  }
		  }
		  ?>
          </select></td>
        </tr>
        <tr>
          <td>Gender</td>
          <td><select name="select3" id="select3">
           <option value="">Select</option>
          <?php
		  $arr = array("MALE","FEMALE");
		  foreach($arr as $val)
		  {
			  if($val == $rsedit[gender])
			  {
			  echo "<option value='$val' selected>$val</option>";
			  }
			  else
			  {
				  echo "<option value='$val'>$val</option>";			  
			  }
		  }
		  ?>
          </select></td>
        </tr>
        <tr>
          <td>Date Of Birth</td>
          <td><input type="date" name="dateofbirth" id="dateofbirth"  value="<?php echo $rsedit[dob]; ?>"/></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><input type="submit" name="submit" id="submit" value="Submit" /></td>
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
<script type="application/javascript">
var alphaExp = /^[a-zA-Z]+$/; //Variable to validate only alphabets
var alphaspaceExp = /^[a-zA-Z\s]+$/; //Variable to validate only alphabets and space
var numericExpression = /^[0-9]+$/; //Variable to validate only numbers
var alphanumericExp = /^[0-9a-zA-Z]+$/; //Variable to validate numbers and alphabets
var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/; //Variable to validate Email ID 


function validateform()
{
	if(document.frmpatprfl.patientname.value == "")
	{
		alert("Patient name should not be empty..");
		document.frmpatprfl.patientname.focus();
		return false;
	}
	else if(!document.frmpatprfl.patientname.value.match(alphaspaceExp))
	{
		alert("Patient name not valid..");
		document.frmpatprfl.patientname.focus();
		return false;
	}
	else if(document.frmpatprfl.admissiondate.value == "")
	{
		alert("Admission date should not be empty..");
		document.frmpatprfl.admissiondate.focus();
		return false;
	}
	else if(document.frmpatprfl.admissiontme.value == "")
	{
		alert("Admission time should not be empty..");
		document.frmpatprfl.admissiontme.focus();
		return false;
	}
	else if(document.frmpatprfl.address.value == "")
	{
		alert("Address should not be empty..");
		document.frmpatprfl.address.focus();
		return false;
	}
	else if(document.frmpatprfl.mobilenumber.value == "")
	{
		alert("Mobile number should not be empty..");
		document.frmpatprfl.mobilenumber.focus();
		return false;
	}
	else if(!document.frmpatprfl.mobilenumber.value.match(numericExpression))
	{
		alert("Mobile number not valid..");
		document.frmpatprfl.mobilenumber.focus();
		return false;
	}
	else if(document.frmpatprfl.city.value == "")
	{
		alert("City should not be empty..");
		document.frmpatprfl.city.focus();
		return false;
	}
	else if(!document.frmpatprfl.city.value.match(alphaspaceExp))
	{
		alert("City not valid..");
		document.frmpatprfl.city.focus();
		return false;
	}
	else if(document.frmpatprfl.pincode.value == "")
	{
		alert("Pincode should not be empty..");
		document.frmpatprfl.pincode.focus();
		return false;
	}
	else if(!document.frmpatprfl.pincode.value.match(numericExpression))
	{
		alert("Pincode not valid..");
		document.frmpatprfl.pincode.focus();
		return false;
	}
	else if(document.frmpatprfl.loginid.value == "")
	{
		alert("Login ID should not be empty..");
		document.frmpatprfl.loginid.focus();
		return false;
	}
	else if(!document.frmpatprfl.loginid.value.match(emailExp))
	{
		alert("Login ID not valid..");
		document.frmpatprfl.loginid.focus();
		return false;
	}
	else if(document.frmpatprfl.password.value == "")
	{
		alert("Password should not be empty..");
		document.frmpatprfl.password.focus();
		return false;
	}
	else if(document.frmpatprfl.password.value.length < 8)
	{
		alert("Password length should be more than 8 characters...");
		document.frmpatprfl.password.focus();
		return false;
	}
	else if(document.frmpatprfl.password.value != document.frmpatprfl.confirmpassword.value )
	{
		alert("Password and confirm password should be equal..");
		document.frmpatprfl.confirmpassword.focus();
		return false;
	}
	else if(document.frmpatprfl.select2.value == "")
	{
		alert("Blood Group should not be empty..");
		document.frmpatprfl.select2.focus();
		return false;
	}
	else if(document.frmpatprfl.select3.value == "")
	{
		alert("Gender should not be empty..");
		document.frmpatprfl.select3.focus();
		return false;
	}
	else if(document.frmpatprfl.dateofbirth.value == "")
	{
		alert("Date Of Birth should not be empty..");
		document.frmpatprfl.dateofbirth.focus();
		return false;
	}
	else if(document.frmpatprfl.select.value == "" )
	{
		alert("Kindly select the status..");
		document.frmpatprfl.select.focus();
		return false;
	}
	else
	{
		return true;
	}
}
</script>