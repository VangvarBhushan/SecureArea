<%@page import="java.util.List"%>
<%@page import="com.project.safevibe.dto.CrimeRating"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
<% CrimeRating cr = (CrimeRating)request.getAttribute("crimeRate"); %>	

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
<script type="text/javascript" src="script/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="script/all-plugins.js"></script>
<script type="text/javascript" src="script/plugin-active.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCIrVCYRHJH2LZ_8YWKs8ax4nWPiiAilrU&callback=myMap"></script>
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
							<li><a class="nav-link" href="userHomePage.jsp"
								data-target="#index1">Home</a></li>
							<li><a class="nav-link" href="index1.jsp#process"
								data-target="#Services">Services</a></li>
							<li><a class="nav-link" href="index1.jsp#aboutUs"
								data-target="#About">About</a></li>
							<li><a class="nav-link" href="index1.jsp#team"
								data-target="#Portfolio">Core Team</a></li>
							<li><a class="nav-link" href="index1.jsp#contact"
								data-target="#ContactUs">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="mobile-menu hidden-lg-up">
					<ul class="mobile-menu-list">
						<li><a class="nav-link" href="userHomePage.jsp"
							data-target="#HeroBanner">Home</a></li>
						<li><a class="nav-link" href="index1.jsp#process"
							data-target="#Services">Services</a></li>
						<li><a class="nav-link" href="index1.jsp#aboutUs"
							data-target="#About">About</a></li>
						<li><a class="nav-link" href="index1.jsp#team"
							data-target="#Portfolio">Core Team</a></li>
						<li><a class="nav-link" href="index1.jsp#contact"
							data-target="#ContactUs">Contact</a></li>
					</ul>
				</div>
			</nav>
		</header>
		
		
		
		<div class=''>
		 <%if(cr.getRating()>5)
		 { 
		  out.println("<script> alert('Area is unsafe i.e--->60% unsafe & 40% safe')</script>");  
		
		 }else if(cr.getRating()<5){
		 out.println("<script>alert('Area is safe i.e--->60% safe & 40% unsafe')</script>");		 
		 }else{
			out.println("<script>alert('Area is safe i.e--->50% safe & 50% unsafe')</script>");		
		 } %>
		</div>
		
		<!-- Contact us section starts here -->
		<section id="ContactUs">
			<div class="container contact-container">
				<h3 class="contact-title"></h3>
				<div class="contact-outer-wrapper">
					<div id="googleMap" style="width:100%;height:450px;background:pink"></div>
					
				</div>
			</div>
		</section>
		
		
		<script>
    
    var center = new google.maps.LatLng(<%=cr.getLat()%>, <%=cr.getLan()%>);     

    function initialize() {
        // MAP ATTRIBUTES.
        var mapAttr = {
            center: center,
            zoom: 12,
            
        };

        // THE MAP TO DISPLAY.
        var map = new google.maps.Map(document.getElementById("googleMap"), mapAttr);

        <%if(cr.getRating()>5){%>
        var circle = new google.maps.Circle({
            center: center,
            map: map,
            radius: 5000,         
            fillColor: 'red',
            fillOpacity: 0.3,
            strokeColor: "#FFF",
            strokeWeight: 0         
        });
        <%}else if(cr.getRating()<5){%>
        var circle = new google.maps.Circle({
            center: center,
            map: map,
            radius: 5000,         
            fillColor: 'green',
            fillOpacity: 0.5,
            strokeColor: "#FFF",
            strokeWeight: 0         
        });
        <%}else{%>
        var circle = new google.maps.Circle({
            center: center,
            map: map,
            radius: 5000,         
            fillColor: 'yellow',
            fillOpacity: 0.5,
            strokeColor: "#FFF",
            strokeWeight: 0         
        });
        
        <%}%>
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>


</body>

</html>