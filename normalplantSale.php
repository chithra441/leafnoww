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

	
	<!-- Header section -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 header-top-left">
						<div class="top-info ">
							<h3>DashBoard</h3>
						</div>
					</div>
					<div class="col-lg-6 text-lg-right header-top-right">
						
						<div class="user-panel">
							<a href="logout.php"><?php session_start(); echo $_SESSION['username']."  ";?><i class="fa fa-user-circle-o"></i>Logout</a>
						</div>
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
              <li><a href="normalplantSale.php">FOR SALE</a></li>
              <li><a href="normalplantRent.php">FOR RENT</a></li>
			                <li><a href="about.php">ABOUT</a></li>			
							<li><a href="contact.php">CONTACT</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-aesthetic-plants-1590100138.jpg">
		<div class="container hero-text text-white">
			<h2>List your plants on our website</h2>
			<a href="addprojectsale.php" class="site-btn">Add Now</a>
		</div>
	</section>

	<!-- Hero section end -->
	<?php 
	include('indexDB.php');
	$loc=$c='';
	$x1="select distinct pname from plant";
	$x2="select distinct pfamily from plant";
	$q="select * from cardsale order by time desc";
	if(isset($_POST['loc']) && isset($_POST['city']))
	{
		$loc=$_POST['loc'];
		$c=$_POST['city'];
		if($loc=='All' && $c=='All')
		{
			$q="select * from cardsale order by time desc";
		}
		if($loc=='All' && $c!='All')
		{
			$q="select * from cardsale where pfamily='$c' order by time desc";
		}
		if($loc!='All')
		{
			$x2="select pfamily from cardsale where location='$loc'";
			$q="select * from cardsale where pfamily='$loc' order by time desc";
		}
	}
	$r1=$conn->query($x1);
	$r2=$conn->query($x2);
	?>

	<!-- Filter form section -->
	<div class="filter-search">
		<div class="container">
			<form class="filter-form" method="post" action="normalplantSale.php">
			<h2>Search by PLANT NAME</h2>
			<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pname   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pfamily</h4>
			
			
				<select name="pname">
										<option value="All" selected>All</option>
					<?php 
					while($p1=mysqli_fetch_array($r1, MYSQLI_ASSOC))
					{
						echo "<option value='".$p1['pname']."'>".$p1['pname']."</option>";
					}
					?>
				</select>
				<select name="pfamily">
					<option value="All" selected>All</option>
					<?php 
					while($p2=mysqli_fetch_array($r2, MYSQLI_ASSOC))
					{
						echo "<option value='".$p2['pfamily']."'>".$p2['pfamily']."</option>";
					}
					?>
				</select>
				<button class="site-btn fs-submit" type="submit">SEARCH</button>
			</form>
		</div>
	</div>
	<!-- page -->
	<section class="page-section categories-page">
		<br><br>
		<h2 align="center">All Plants</h2>
						<br><br>
		<div class="container">
			<div class="row">

				<?php
						$r = $conn->query($q);
						while($x=mysqli_fetch_array($r, MYSQLI_ASSOC))
						{
							?>
							<div class='col-md-4' style="height:300px;">
								<form action='single-list_sale.php?action=add&id=<?php echo $x['plant_id']; ?>' method="post">
								<div class='sale-notic'>FOR Sale</div>
								<!-- <a style="color:green;" href="http://localhost:8080/r1/REAL/editprojectsale.php?id=<?php echo $x['plant_id']?>"><u>Edit</u></a> -->
								<!-- <a style="color:red;" href="http://localhost:8080/r1/REAL/deleteprojectsale.php?id=<?php echo $x['plant_id']?>"><u>Delete</u></a> -->
									<div class='propertie-info text-white' style="background-image:url('<?php echo $x['image'] ?>');height:270px">
									<div class='info-warp'>
										<p><i class='fa fa-map-marker'></i><?php echo $x['pname'] ?></p>
									</div>
									<button class='price' type='submit'><?php echo "Rs. ".$x['totalcost'] ?></button>
									</div>
									</form>
							</div>
				<?php
						}
				?>
			</div>
		</div>
		<br><br>
		<h2 align="center">Your Plants</h2>
		<br><br>
		<div class="container">
		<div class="row">
				<?php
						$ab="select * from plant natural join sale where uid=".$_SESSION['id']." ";
						$r1 = $conn->query($ab);
						while($y=mysqli_fetch_array($r1, MYSQLI_ASSOC))
						{
							?>
							<div class='col-md-4' style="height:300px;">
								<form action='single-list_sale.php?action=add&id=<?php echo $y['plant_id']; ?>' method="post">
								<div class='sale-notic'>FOR Sale</div>
								<a style="color:green;" href="http://localhost:8080/r1/REAL/editprojectsale.php?id=<?php echo $y['plant_id']?>"><u>Edit</u></a>
								<a style="color:red;" href="http://localhost:8080/r1/REAL/deleteprojectsale.php?id=<?php echo $y['plant_id']?>"><u>Delete</u></a>
									<div class='propertie-info text-white' style="background-image:url('<?php echo $y['image'] ?>');height:270px">
									<div class='info-warp'>
										<p><i class='fa fa-map-marker'></i><?php echo $y['pname'] ?></p>
									</div>
									<button class='price' type='submit'><?php echo "Rs. ".$y['totalcost'] ?></button>
									</div>

									</form>
							</div>

				<?php
						}
				?>
			</div>
		</div>
	</section>

	<footer class="footer-section set-bg" data-setbg="img/footer-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 footer-widget">
					<h3 class="fw-title">LEAFNOW</h3>
					
					
					<p>We provide you with the best services which is best for your family and which suits your pocket.</p>
					
				</div>
				<div class="col-lg-3 col-md-6 footer-widget">
					<div class="contact-widget">
						<h5 class="fw-title">CONTACT US</h5>
					
						<p><i class="fa fa-phone"></i>(+91) 666 121 4321</p>
						<p><i class="fa fa-envelope"></i>info.leafnow@gmail.com</p>
						
					</div>
				</div>
				<div class="col-lg-3 col-md-6 footer-widget">
					<div class="double-menu-widget">
						<h5 class="fw-title">LEAFNOW BRANCHES</h5>
						<ul>
							<li><a href="">Mumbai</a></li>
							<li><a href="">Chennai</a></li>
			                <li><a href="">Banglore</a></li>
						</ul>
						
					</div>
				</div>
				
			</div>
			
		</div>
	</footer>

	<!-- Footer section end -->                               
	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/masonry.pkgd.min.js"></script>
	<script src="js/magnific-popup.min.js"></script>
	<script src="js/main.js"></script>
	<style>
		.hero-section set-bg{
			background:linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url("https://www.houseplans.net/news/wp-content/uploads/2020/07/Modern-963-00433.jpg");
		}
</body>
</html>
