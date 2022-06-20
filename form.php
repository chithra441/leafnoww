<?php session_start();
include('indexDB.php');
  $name = $phone = $questions=$email=$timedenote="";

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
$nameErr = $emailErr = $timedenoteErr = $phoneErr = "";
$b=true;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (empty($_POST["name"])) {
        $usernameErr = "*name is required";
        $b=false;
      } 
  
if (empty($_POST["email"])) {
    $emailErr = "*Email is required";
    $b=false;
} else {
    $email = test_input($_POST["email"]);
     if (!preg_match("/^[a-zA-Z0-9\.]*@[a-z\.]{1,}[a-z]*$/",$email) || $email=='') {
      $emailErr = "*Enter a Valid Email"; 
      $b=false;
    }
  }
  if (empty($_POST["timedenote"])) {
    $timedenoteErr = "*Time you can denote for working in leafnow is  required";
    $b=false;
  } 
  if (empty($_POST["phone"])) {
    $phoneErr = "*Contact Number is required";
    $b=false;
  } else {
    $phone = test_input($_POST["phone"]);
    if(!preg_match("/^[0-9]{10,10}$/",$phone) || $phone==''){
    	$phoneErr = "*Enter A Valid Contact Number";
    	$b=false;
    }
  }
}
if($b==true && isset($_POST['submit']))
{
    $sql = "insert into form(name,timedenote,questions,phone,email) values('$name','$timedenote','$questions','$phone',$email)";
		$res=$conn->query($sql);
    $sql1="select uid from form where name='$username'";
    $result=$conn->query($sql1);
    $row= mysqli_fetch_array($result,MYSQLI_ASSOC);
    $_SESSION['name']=$name;
    $_SESSION['type']='normal';
		$_SESSION['id']=$row['uid'];
		header('Location: servicess.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>LEAFNOW</title>
	<meta charset="UTF-8">
	<meta name="description" content="LEAFNOW">
	<meta name="keywords" content="LERAMIZ, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="Styles.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->

	
	<!-- Header section -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="row">
					
					
					<div class="col-lg-6 text-lg-right header-top-right">
						
					</div>
						<div class="user-panel">
							<a href="register.php"><i class="fa fa-user-circle-o"></i> Register</a>
						
							<a href="loginuser.php"><i class="fa fa-sign-in"></i>Login</a>
						</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="site-navbar">
						<div class="site-logo"> <h3>LEAFNOW</h3></div>
						<div class="nav-switch">
							<i class="fa fa-bars"></i>
						</div>
						<ul class="main-menu">
							<li><a href="index.php">HOME</a></li>
							<li><a href="about.php">ABOUT US</a></li>
						
							<li><a href="contact.php">CONTACT US</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->

	<style type="text/css">
body{
background-repeat:no-repeat;
background-image:linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url("https://thumbs.dreamstime.com/z/environment-day-concept-hand-holding-plant-world-environment-day-concept-hand-holding-plant-161383731.jpg");
background-size:cover;
background-attachment:fixed;
color:white;
}
input[type=text],input[type=date],input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    background-color: #e0e0d1;
    color:black;
}

 input[type=submit], input[type=reset] {
    background-color: #e0e0d1;
    border: none;
    color: black;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
    font-weight:bold;
}
input[type=radio] {
    height: 15px;
    width: 15px;
    
}



select {
	 background-color: #e0e0d1;
    border: none;
    color: black;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
    font-weight:bold;
}
textarea {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    background-color:#e0e0d1;
    color:black;
}
table{
 background-color:black;
  border-collapse: collapse; 
  border: 2px solid navy;
}
form{
opacity:0.8;
}
td{
font-weight:bold;
}
span
{
   color:red;
}

</style>
</head>


 <br><br><br><br><br><br><br><br><br><br><br>
<form id="form" method="post" action="form.php" >

<table cellpadding="7" width="50%" border="0" align="center"cellspacing="2" color="white">

    <!-- I want another button here, center to the tile-->



<tr>
<td colspan=2>

</td>
</tr>
<tr>
<td colspan=2>
<center><font size=5><b>SUBMITTING SERVICES</b></font></center>
</td>
</tr>

<tr>
<td><b>NAME:</b></td>
<td><input type="text" name="name" size="30">
<span class="error"><?php echo $nameErr; ?></span>
<br><br>
</td>
</tr>
<td>TIME DENOTED IN MONTHS:</td>
<td><input type="text" name="timedenote"  size="30">
<span class="error"><?php echo $timedenoteErr; ?></span>
  <br><br>
</td>
</tr>
<td>QUESTIONS:</td>
<td><input type="text" name="questions"  size="30">

  <br><br>
</td>
</tr>
<tr>
<td>EMAIL ID:</td>
<td><input type="text" name="email"  size="30">
<span class="error"><?php echo $emailErr; ?></span>
  <br><br>
</td>
</tr>
<tr>
<td>PHONE NO:</td>
<td><input type="text" name="phone"  size="30">
<span class="error"><?php echo $phoneErr; ?></span>
  <br><br>
</td>
</tr>




<td><input type="reset" value="Reset"></td>
<td><input type="submit" value="Register" name="submit">
<div style = "font-size:20px; color:#cc0000; margin-top:10px"></div>
</td>
</tr>
</table>
<br><br><br><br><br><br><br><br><br><br>
</form>



 
</body>
</html>