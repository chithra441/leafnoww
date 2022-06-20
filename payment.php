<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html lang="en">
<head>
	<title>LEAFNOW</title>
	<meta charset="UTF-8">
	<meta name="description" content="HOUSING-CO">
	<meta name="keywords" content="HOUSING-CO, unica, creative, html">
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
	
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<?php
session_start(); 
if($_SESSION['type']!='normal')
{
	header('Location: single-list_sale.php');
}
?>
<body>
	<!-- Page Preloder -->

	
	<!-- Header section -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="row">
                    <div class="col-10">
                        <h1>DashBoard</h1>
                    </div>
					<div class="col-2">
						<?php echo $_SESSION['username']?><a href="logout.php"><i class="fa fa-sign-in"></i> Logout</a>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="site-navbar">
					<div class="site-logo"><h3>LEAFNOW</h3>   </div>
						<div class="nav-switch">
							<i class="fa fa-bars"></i>
						</div>
						<ul class="main-menu">
						<li><a href="normalHomeSale.php">FOR SALE</a></li>
                            <li><a href="normalHomeRent.php">FOR RENT</a></li>
							<li><a href="about.php">ABOUT US</a></li>
							
							<li><a href="contact.php">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="">
		<div class="container hero-text text-white">
			
		</div>
	</section>
<style type="text/css">
body{
background-repeat:no-repeat;
background-image:linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url("https://assets-news.housing.com/news/wp-content/uploads/2020/09/03164616/How-to-deal-with-advance-payments-during-property-purchase-FB-1200x700-compressed.jpg");
background-size:cover;
background-attachment:fixed;
color:white;
height:600px;
}
input[type=text],input[type=date],input[type=password] {
    width: 100%;
    /* padding: 12px 20px; */
    margin: 8px 0;
    box-sizing: border-box;
    background-color: #e0e0d1;
    color:black;
}

 input[type=submit], input[type=reset] {
    background-color: #e0e0d1;
    border: none;
    color: black;
    /* padding: 16px 32px; */
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
    font-weight:bold;
}
input[type=radio] {
   
    width: 15px;
    
}



select {
	 background-color: #e0e0d1;
    border: none;
    color: black;
    /* padding: 16px 32px; */
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
    font-weight:bold;
}
textarea {
    width: 100%;
    /* padding: 12px 20px; */
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
opacity:0.7;
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
<form id="form" method="post" action="thankyou.php" >

<table cellpadding="7" width="50%" border="0" align="center"cellspacing="2" color="white">

    <!-- I want another button here, center to the tile-->
<tr>
<td colspan=2>

</td>
</tr>
<tr>
<td colspan=2>
<center><font size=5><b>Payment Details</b></font></center>
</td>
</tr>

<tr>
<td><b>Bank name:</b></td>
<td><input type="text" name="Bankname" size="30">

<br><br>
</td>
</tr>




<tr>
<td><b>Amount:</b></td>
<td><h3><?php echo $_SESSION["amt"]?></h3>
<span class="error"></span>
  <br><br>
</td>
</tr>


<tr>
<td><b>Payment details:</b></td>
<td><input type="text" name="Paymentdetails" size="30">
<span class="error"></span>
  <br><br>
</td>
</tr>


<tr>
<td><b>Payment number:</b></td>
<td><input type="text" name="paymentno" size="30">
<span class="error"></span>
  <br><br>
</td>
</tr>


<tr>
<td><b>Payment Option:</b></td>
<td><input type="text" name="Paymentoption" size="30">
<span class="error"></span>
  <br><br>
</td>
</tr>


<tr>
<td><input type="reset" value="Reset"></td>
<td><input type="submit" value="Submit" >

<div style = "font-size:20px; color:#cc0000; margin-top:10px"></div>
</td>
</tr>
</table>
<br><br><br><br><br><br><br><br><br><br>
</form>
