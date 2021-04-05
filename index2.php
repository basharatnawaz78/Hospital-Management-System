<?php
include("header.php");
?>
<!DOCTYPE html>
<html lang="en"> 
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>DOCTOR - Responsive HTML &amp; Bootstrap Template</title>
	<link rel="stylesheet" href="doctor/css/font-awesome.min.css">
	<link rel="stylesheet" href="doctor/css/bootstrap.min.css">
	<link rel="stylesheet" href="doctor/css/style.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,800,700,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=BenchNine:300,400,700' rel='stylesheet' type='text/css'>
	<script src="doctor/js/modernizr.js"></script>
	<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet" href="doctor/js/jquery-ui.css">

	<link rel="stylesheet" href="js/bootstrap.min">
	
	
	
       
         <!-- CUSTOM SCRIPTS -->
    <script src="doctor/assets/js/custom.js"></script>
</head>
<body>
	<?php
	include "config.php";
	
	if(isset($_POST["sign_up"]))
	{
		
		$email = $_POST['user_email'];
		$pass  =$_POST['user_pass'];
		$usrNm="";		$usrNm=$_POST['user_name'];
		$usemail="";	$usemail=$_POST['user_email'];
		$pswd="";		$pswd=$_POST['user_pass'];
		
		$gen="";		$gen=$_POST['gender'];
		$cont="";		$cont=$_POST['user_cont'];
		
		$add="";		$add=$_POST['user_grp'];
		$dob="";		$dob=$_POST['dob'];
		
		$today = date("Y-m-d");
		$diff = date_diff(date_create($dob), date_create($today));
		$age=$diff->format('%y');
		
		
		$sql1="insert into patient_detail (user_name,email,place,contact, dob, gender,tbl_age,time)
				values('$usrNm','$usemail','$add','$cont','$dob','$gen','$age','$dt $tim')";
		$sql1=$conn->query($sql1);		
		$lId= $conn->insert_id;
		
		$sql="insert into tbl_login (tbl_email,tbl_pswd,tbl_contact,type,user_loginid) values
		('$usemail','$pass','$cont','1','$lId')";
		$sql=$conn->query($sql);
		
		echo "<script>alert('Patient Registration done successfully...');</script>";
		echo "<script>window.location='index.php';</script>";
		//header('Location:index.php'); 
		
	//exit;
	}
	if(isset($_POST["login_id"])){
		$user=$_POST['username'];
		$psawd=$_POST['password'];
		$sql    = "select * from tbl_login where tbl_email='$user' And tbl_pswd='$psawd'";
		$row 	= $conn->query($sql);
		$nRow 	= mysqli_num_rows($row);
		$udtl 	= mysqli_fetch_array($row);
		if($nRow>=1)
		{
			session_start();
			$_SESSION['uname'] = $udtl['tbl_log_id'];
			$_SESSION['user_id'] = $udtl['user_loginid'];
			$_SESSION['type'] = $udtl['type'];
			
			if($udtl['type']==1){
	
				header('Location:appointment.php'); 
			}if($udtl['type']==2){
				//for doctor login
				header('Location:myappoint.php'); 
			}
			if($udtl['type']==0){
				
				//for admin login
				header('Location:menu.php'); 
			}
		}
		
	
	}
		
	?>
	<!-- ====================================================
	header section -->
	<header class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-2 header-logo">
					<br>
					<a href="index.html"><img src="img/logo.png" alt="" class="img-responsive logo"></a>
				</div>

				<div class="col-md-10">
					<nav class="navbar navbar-default">
					  <div class="container-fluid nav-bar">
					    <!-- Brand and toggle get grouped for better mobile display -->
					    <div class="navbar-header">
					      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					        <span class="sr-only">Toggle navigation</span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					      </button>
					    </div>

					    <!-- Collect the nav links, forms, and other content for toggling -->
					    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					      
					      <ul class="nav navbar-nav navbar-right">
					        <li><a class="menu active" href="#home" >Home</a></li>
					        <li><a class="menu" href="#about">about us</a></li>
					        <li><a class="menu" href="#service">our services </a></li>
					        <li><a class="menu" href="#team">our team</a></li>
					        <li><a class="menu" href="#login_pg"> Sign up</a></li>
					      </ul>
					    </div><!-- /navbar-collapse -->
					  </div><!-- / .container-fluid -->
					</nav>
				</div>
			</div>
		</div>
	</header> <!-- end of header area -->

	<section class="slider" id="home">
		<div class="container-fluid">
			<div class="row">
			    <div id="carouselHacked" class="carousel slide carousel-fade" data-ride="carousel">
					<div class="header-backup"></div>
			        <!-- Wrapper for slides -->
			        <div class="carousel-inner" role="listbox">
			            <div class="item active">
			            	<img src="img/slide-one.jpg" alt="">
							
			                <div class="carousel-caption">
		               			<h1>providing</h1>
		               			<p>highquality service for men,women &amp; children</p>
		               			
			                </div>
			            </div>
			            <div class="item">
			            	<img src="img/slide-two.jpg" alt="">
			                <div class="carousel-caption">
		               			<h1>providing</h1>
		               			<p>highquality service for men,women &amp; children</p>
		               			
			                </div>
			            </div>
			            <div class="item">
			            	<img src="img/slide-three.jpg" alt="">
			                <div class="carousel-caption">
		               			<h1>providing</h1>
		               			<p>highquality service for men,women &amp; children</p>
		               			
			                </div>
			            </div>
						
			            <div class="item">
			            	<img src="img/slide-four.jpg" alt="">
			                <div class="carousel-caption">
		               			<h1>providing</h1>
		               			<p>highquality service for men,women &amp; children</p>
		               			
			                </div>
			            </div>
			        </div>
			        <!-- Controls -->
			        <a class="left carousel-control" href="#carouselHacked" role="button" data-slide="prev">
			            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			            <span class="sr-only">Previous</span>
			        </a>
			        <a class="right carousel-control" href="#carouselHacked" role="button" data-slide="next">
			            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			            <span class="sr-only">Next</span>
			        </a>
			    </div>
			</div>
		</div>
	</section>
	
	
	
	
	
	
	<section id="login_pg" class="site-padding">
			<div class="container" style="margin-top:15px; margin-bottom:250px;">
				<div class="row">
		<div class="col-sm-8">
		 
		<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
				
					<!-- PRICE ITEM -->
					<div class="panel price panel-grey">
						<div class="contact-caption clearfix"><div class="contact-heading text-center">
						<h3> SIGN UP</h3></div>
						</div>
						</div>
			<form method="post" action="" name="frmps" enctype="multipart/form-data" onSubmit="return validateform();"> 
				<div class="row">
					<div class="col-md-12">
					<div class="form-group">
						<input type="text" class="form-control" id="user_name" name="user_name" placeholder="Enter Patient Name">
					</div> 
					</div>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="user_email" name="user_email"  placeholder="Enter Username/ Email-Id">
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<input type="password" class="form-control" id="user_pass" name="user_pass" placeholder="Password">
						</div>
					</div>
				<div class="col-md-6">
				<div class="form-group">
					<input type="Date" class="form-control" id="dob" name="dob"  placeholder="Date of Birth">
				</div>
				</div>
					
				</div>
				<div class="row">
				<div class="col-md-6">
				<select class="form-control" name="gender">
				<option value="Male"> Male</option>
				<option value="Female">Female </option>
				<option>Others</option>
				</select>
				
				</div>
				
				<div class="col-md-6">
				<div class="form-group">
					<input type="text" class="form-control" id="user_cont" name="user_cont"  placeholder="Enter Contact No">
				</div>
				</div>
				</div>
				<div class="row">
				<div class="col-md-12">
				<div class="form-group">
					<textarea class="form-control" id="user_grp" name="user_grp"  placeholder="Address"></textarea>
				</div>
				</div>
				
				
				</div>
				
										<div class="validation">
										</div>
										
						<div class="panel-footer">
						<button class="btn btn-lg btn-block btn-success"  name="sign_up"> Register</button>
							
						</div>
					
					<!-- /PRICE ITEM -->
					
					
		</div>
		
		</div>
		</form>
		<form method="post" action="" name="login" enctype="multipart/form-data" onSubmit="return validatelogin();"> 
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
				
					<!-- PRICE ITEM -->
					<div class="panel price panel-green">
						<div class="contact-caption clearfix">
						<div class="contact-heading text-center">
						<h3>Login</h3></div>
						</div>
						</div>
				<div class="row">
				<div class="col-md-12">
				<div class="form-group">
					<input type="text" class="form-control" id="username" name="username" placeholder="Enter User Name">
				</div>
				</div>
				</div>
					<div class="row">
				<div class="col-md-12">
				<div class="form-group">
					<input type="password" class="form-control" id="password" name="password" placeholder="Password">
				</div>
				</div>
				</div>
										<div class="validation">
										</div>
										
						<div class="panel-footer">
						<button class="btn btn-lg btn-block btn-success"  name="login_id"> Login</button>
							
						</div>
					</form>
					<!-- /PRICE ITEM -->
					
					</div>
					</div>
			</div></div>
		</section>>
	<div id="show_login" class="login_pg">
	
	</div>
	
	
	
	<!-- end of slider section -->

	<!-- about section -->
	<section class="about text-center" id="about">
		<div class="container">
		
		
		
		
			<div class="row">
				<h2>about us</h2>
				<h4>"FAITHFUL TO OUR TRADITION, WE PROVIDE THE HIGHEST POSSIBLE STANDARD OF CARE AND TREATMENT IN A PROFESSIONAL AND COMPASSIONATE MANNER TO EVERY PERSON WHO AVAILS OF OUR SERVICES".</h4>
				<div class="col-md-4 col-sm-6">
					<div class="single-about-detail clearfix">
						<div class="about-img">
							<img class="img-responsive" src="img/item1.jpg" alt="">
						</div>
						<div class="about-details">
							<div class="pentagon-text">
								<h1>C</h1>
							</div>
							<h3>Children specialist</h3>
							<p>Creating Healthy tomorrows...for one child, All Children.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="single-about-detail">
						<div class="about-img">
							<img class="img-responsive" src="img/item2.jpg" alt="">
						</div>
						<div class="about-details">
							<div class="pentagon-text">
								<h1>W</h1>
							</div>

							<h3>Women specialist</h3>
							<p>Together, we are working toward a healthier community.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="single-about-detail">
						<div class="about-img">
							<img class="img-responsive" src="img/item3.jpg" alt="">
						</div>
						<div class="about-details">
							<div class="pentagon-text">
								<h1>M</h1>
							</div>
							<h3>Men specialist</h3>
							<p>Together, we are working toward a healthier community.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><!-- end of about section -->


	<!-- service section starts here -->
	<section class="service text-center" id="service">
		<div class="container">
			<div class="row">
				<h2>Our services</h2>
				<h4>"THE BEST WAY TO FIND YOURSELF IS TO LOSE YOURSELF IN THE SERVICE OF OTHERS"</h4>
				<div class="col-md-3 col-sm-6">
					<div class="single-service">
						<div class="single-service-img">
							<div class="service-img">
								<img class="heart img-responsive" src="img/service1.png" alt="">
							</div>
						</div>
						<h3>Heart problem</h3>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-service">
						<div class="single-service-img">
							<div class="service-img">
								<img class="brain img-responsive" src="img/service2.png" alt="">
							</div>
						</div>
						<h3>Brain problem</h3>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-service">
						<div class="single-service-img">
							<div class="service-img">
								<img class="knee img-responsive" src="img/service3.png" alt="">
							</div>
						</div>
						<h3>Knee problem</h3>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-service">
						<div class="single-service-img">
							<div class="service-img">
								<img class="bone img-responsive" src="img/service4.png" alt="">
							</div>
						</div>
						<h3>Bones problem</h3>
					</div>
				</div>
			</div>
		</div>
	</section><!-- end of service section -->


	<!-- team section -->
	<section class="team" id="team">
		<div class="container">
			<div class="row">
				<div class="team-heading text-center">
					<h2>our team</h2>
					<h4>Our team is comprised of highly experienced specialised doctors-all working together with you and your family to get you treated and back to your normal routine as quickly as possible.</h4>
				</div>
				<div class="col-md-2 single-member col-sm-4">
					<div class="person">
						<img class="img-responsive" src="img/member1.jpg" alt="member-1">
					</div>
					<div class="person-detail">
						<div class="arrow-bottom"></div>
						<h3>Dr.Peter Dsilva, M.D.</h3>
						<p>A well-known Cardiologist.Cardiologists treat disease and injury of the heart and cardiovascular system. </p>
					</div>
				</div>
				<div class="col-md-2 single-member col-sm-4">
					<div class="person-detail">
						<div class="arrow-top"></div>
						<h3>Dr.Joslita, M.D.</h3>
						<p>A well-known ENT specialist. ENT specialists,also known as Otolaryngologists,are medical doctors responsible for surgical and medical treatment of the ears,nose and throat, as well as the related head and nect areas. </p>
					</div>
					<div class="person">
						<img class="img-responsive" src="img/member2.jpg" alt="member-2">
					</div>
				</div>
				<div class="col-md-2 single-member col-sm-4">
					<div class="person">
						<img class="img-responsive" src="img/member3.jpg" alt="member-3">
					</div>
					<div class="person-detail">
						<div class="arrow-bottom"></div>
						<h3>Dr. Joseph, M.D.</h3>
						<p>A well-known Optometrist. Optometrists typically perform vision tests and analyze results. </p>
					</div>
				</div>
				<div class="col-md-2 single-member col-sm-4">
					<div class="person-detail">
						<div class="arrow-top"></div>
						<h3>Dr. Caitlin, M.D.</h3>
						<p>A well-known Pediatrician. Pediatricians provide medical care to infants, children,adolescents and young adults.  </p>
					</div>
					<div class="person">
						<img class="img-responsive" src="img/member4.jpg" alt="member-4">
					</div>
				</div>
				<div class="col-md-2 single-member col-sm-4">
					<div class="person">
						<img class="img-responsive" src="img/member5.jpg" alt="member-5">
					</div>
					<div class="person-detail">
						<div class="arrow-bottom"></div>
						<h3>Dr. Michael, M.D.</h3>
						<p>A well-known Neurologist. Neurologists are experts at the diagnosis and treatment of neurological disorders, including stroke,dementia and neuromuscular diseases.</p>
					</div>
				</div>
				<div class="col-md-2 single-member col-sm-4">
					<div class="person-detail">
						<div class="arrow-top"></div>
						<h3>Dr. Hasina, M.D.</h3>
						<p>A well-known Dermatologist. Dermatologists diagnose and treat ailments of the largest organ of the human body and advise patients on achieving healthy and attractive skin. </p>
					</div>
					<div class="person">
						<img class="img-responsive" src="img/member6.jpg" alt="member-5">
					</div>
				</div>
			</div>
		</div>
	</section><!-- end of team section -->

	<!-- map section -->
	<div class="api-map" id="contact">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 map" id="map"></div>
			</div>
		</div>
	</div><!-- end of map section -->

	<!-- contact section starts here -->
	
	</section><!-- end of contact section -->

	<!-- footer starts here -->
	<footer class="footer clearfix">
		<div class="container">
			<div class="row">
				<div class="col-xs-6 footer-para">
					<p>&copy;Mostafizur All right reserved</p>
				</div>
				<div class="col-xs-6 text-right">
					<a href=""><i class="fa fa-facebook"></i></a>
					<a href=""><i class="fa fa-twitter"></i></a>
					<a href=""><i class="fa fa-skype"></i></a>
				</div>
			</div>
		</div>
	</footer>

	<!-- script tags
	============================================================= -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="js/gmaps.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>
	<script>
	function test(){
		
			
				$('#show_login').load('login.php');
				
		}
		
		function validatelogin()
		{
			if(document.login.username.value == "")
			{
					alert("Please Enter User Name/ Email....");
						document.login.username.focus();
						return false;	
			}
			if(document.login.password.value == "")
			{
					alert("Please Enter Password....");
						document.password.username.focus();
						return false;	
			}
		}
		function validateform()
		{
			if(document.frmps.user_name.value == "")
			{
					alert("Name should not be empty....");
					document.frmps.user_name.focus();
					return false;		
			}
			if(document.frmps.user_email.value == "")
			{
					alert("Email Id should not be empty....");
					document.frmps.user_email.focus();
					return false;		
			}
			if(document.frmps.user_pass.value == "")
			{
					alert("Password should not be empty....");
					document.frmps.user_pass.focus();
					return false;		
			}
			if(document.frmps.dob.value == "")
			{
					alert("Date of Birth should not be empty....");
					document.frmps.dob.focus();
					return false;		
			}
			
			if(document.frmps.user_grp.value == "")
			{
					alert("Gender should not be empty....");
					document.frmps.user_grp.focus();
					return false;		
			}
			
			var mob = /^[1-9]{1}[0-9]{9}$/;
			var txtMobile = document.getElementById("user_cont");
			if (mob.test(txtMobile.value) == false) {
				alert("Please enter valid contact number.");
				txtMobile.focus();
				return false;
			}
		}
		</script>
</body>
</html>