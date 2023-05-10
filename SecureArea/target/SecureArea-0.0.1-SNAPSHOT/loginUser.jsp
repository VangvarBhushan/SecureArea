<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>   
<!DOCTYPE html>
<html>
<head>
<title>login</title>

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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<script type="text/javascript" src="script/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="script/all-plugins.js"></script>
<script type="text/javascript" src="script/plugin-active.js"></script>
</head>
<body data-spy="scroll" data-target=".main-navigation" data-offset="150">

 
 <div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					 <div class="brand_logo_container">
						<img src="images1/loginlogo.png" class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class="d-flex justify-content-center form_container">
					<form action="userLogin.htm" method="post">
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="username" class="form-control input_user" value="" placeholder="username">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="pass" class="form-control input_pass" value="" placeholder="password">
						</div>

							<div class="d-flex justify-content-center mt-3 login_container">
				 	<button type="submit" name="button" class="btn login_btn">Login</button>
				   </div>
					</form>
				</div>
		
				<div class="mt-4">
					<div class="d-flex justify-content-center links" style="color:white;">
						Don't have an account? <a href="registerUser.htm" class="ml-2">Sign Up</a>
					</div>
					
				</div>
			</div>
		</div>
	</div>
 <div class="home">
 <a href="index1.jsp">Home</a>	
 
 </div>
</body>

</html>