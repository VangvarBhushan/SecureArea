<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>   
<!DOCTYPE html>
<html>
<head>
<title>Safe Vibes</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<!-- favicons -->
<link rel="stylesheet" type="text/css"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css1/style.css">
<link rel="stylesheet" type="text/css"
	href="css1/custom-responsive-style.css">
<link href="//fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
	<link rel='stylesheet' href='http://codepen.io/assets/libs/fullpage/jquery-ui.css'>

    <link rel="stylesheet" href="css2/style.css" media="screen" type="text/css" />
<script type="text/javascript" src="script/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="script/all-plugins.js"></script>
<script type="text/javascript" src="script/plugin-active.js"></script>
</head>
<body data-spy="scroll" data-target=".main-navigation" data-offset="150">
	<section id="MainContainer">
		<!-- Header starts here -->
		<header id="Header" style="background:black">
			<nav class="main-navigation">
				<div class="container clearfix">
					<a href="javascript:void(0)" class="menu-trigger hidden-lg-up"><span>&nbsp;</span></a>
					<div class="main-menu hidden-md-down">
						<ul class="menu-list">
							<li><a class="nav-link" href="index1.jsp"
								data-target="#HeroBanner">Home</a></li>
							<li><a class="nav-link" href="index1.jsp#process"
								data-target="#Services">Process</a></li>
							<li><a class="nav-link" href="index1.jsp#aboutUs"
								data-target="index1.jsp#aboutUs">About</a></li>
							<li><a class="nav-link" href="index1.jsp#team"
								data-target="#Portfolio">Core team</a></li>
							<li><a class="nav-link" href="index1.jsp#contact"
								data-target="#ContactUs">Contact</a></li>
								
						</ul>
					</div>
				</div>
			</nav>
		</header>
		
  <div class="login-card" style="margin-top:100px">
    <h1>Log-in</h1><br>
    <spr:form action="login.htm" method="post">
    <input type="text" name="username" placeholder="Username"/>
    <input type="password" name="pass"  placeholder="Password" required
    ./>
    <input type="submit" class="login login-submit" value="Log in" />
  </spr:form>
    
   
</div>
</body>

</html>