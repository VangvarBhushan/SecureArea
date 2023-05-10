<%@page import="com.project.safevibe.dto.CrimeRating"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	List<CrimeRating> userList = (List<CrimeRating>)request.getAttribute("ul");
%> 
<!DOCTYPE html>
<html>
<head>
<title>Secure Area</title>
<style type="text/css">
	html,
body,
header,
#intro {
    height: 100%;
    font-size:15px;
    
}
nav{
	  background-color: black;
	  color:white
}
#intro {
    
     background-image: url("images1/home.jpg");
     background-repeat:no-repeat;
     background-position:center;
     background-attachment:fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
 	
 	 /*  opacity: 0.5;  */
		
    
}

.col-md-4{
	  border-style: solid;
    border-size:5px;
    border-color:#c0392b;
  	border-collapse: separate;
  border-spacing: 15px 50px
}
.three-column-footer-contact-form-container {
  background-color:black;
  max-width:1000px;
  margin-left:90px;
  margin-right:90px;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form {
  max-width: 90rem;
  margin-right: auto;
  margin-left: auto;
  color: white;
  padding: 3.75rem 0;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form::before, .three-column-footer-contact-form-container .three-column-footer-contact-form::after {
  display: table;
  content: ' ';
  -webkit-flex-basis: 0;
      -ms-flex-preferred-size: 0;
          flex-basis: 0;
  -webkit-order: 1;
      -ms-flex-order: 1;
          order: 1;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form::after {
  clear: both;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form a {
  color: White;
 
  font-size:15px;
  
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left {
  width: 400%;
  float: left;
  padding-right: 0.625rem;
  padding-left: 0.625rem;
  display: table;
}



.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left .contact-details p {
  font-size: 1.0rem;
  margin-bottom: 0;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left .input-group {
  padding: 2rem 0 0 0;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left .input-group input {
  border-bottom: 2px solid #cacaca;
}

@media print, screen and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left:last-child:not(:first-child) {
  float: right;
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left {
    width: 25%;
    float: left;
    padding-right: 0.625rem;
    padding-left: 0.625rem;
  }
}

@media print, screen and (min-width: 64em) and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-left:last-child:not(:first-child) {
    float: right;
  }
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center {
  text-align: left;
  width: 100%;
  float: left;
  padding-right: 0.625rem;
  padding-left: 0.625rem;
  display: table;
}

@media print, screen and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center:last-child:not(:first-child) {
  float: right;
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center {
    width: 33.33333%;
    float: left;
    padding-right: 0.625rem;
    padding-left: 0.625rem;
    position: relative;
    left: 8.33333%;
  }
}

@media print, screen and (min-width: 64em) and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center:last-child:not(:first-child) {
    float: right;
  }
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center .baseline {
  display: table-cell;
  vertical-align: bottom;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center .input-group {
  padding: 0.5rem 0 0 0;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center .input-group input {
  border-bottom: 2px solid #cacaca;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-center .input-group textarea {
  border-bottom: 2px solid #cacaca;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right {
  text-align: right;
  width: 100%;
  float: left;
  padding-right: 0.625rem;
  padding-left: 0.625rem;
  display: table;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right .baseline {
  display: table-cell;
  vertical-align: bottom;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right h2 {
  color: #fefefe;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right p {
  font-size: 0.8rem;
  margin-bottom: 0;
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right .fa {
  padding: 1rem 0 1rem 0.2rem;
}

@media print, screen and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

.three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right:last-child:not(:first-child) {
  float: right;
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right {
    width: 25%;
    float: left;
    padding-right: 0.625rem;
    padding-left: 0.625rem;
  }
}

@media print, screen and (min-width: 64em) and (min-width: 40em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right {
    padding-right: 0.9375rem;
    padding-left: 0.9375rem;
  }
}

@media print, screen and (min-width: 64em) {
  .three-column-footer-contact-form-container .three-column-footer-contact-form .footer-right:last-child:not(:first-child) {
    float: right;
  }
}

.top-nav-collapse {
    background-color: #24355C;
  }
  @media (max-width: 768px) {
    .navbar:not(.top-nav-collapse) {
      background-color: #24355C;
    }
  }
  @media (min-width: 800px) and (max-width: 850px) {
    .navbar:not(.top-nav-collapse) {
      background-color: #24355C;
    }
  }
   .text {
    position: absolute;
     top: 160px;
    right: 70px;
    transform: translate(50%,-50%);
    text-transform: uppercase;
    font-family: verdana;
    font-size: 70px;
    font-weight: 700;
    color: #f5f5f5;
    text-shadow: 1px 1px 1px #919191,
        1px 2px 1px #919191,
        1px 3px 1px #919191,
        1px 4px 1px #919191,
        1px 5px 1px #919191,
        1px 6px 1px #919191,
        1px 7px 1px #919191,
        1px 8px 1px #919191,
        1px 9px 1px #919191,
        1px 10px 1px #919191,
    1px 18px 6px rgba(16,16,16,0.4),
    1px 22px 10px rgba(16,16,16,0.2),
    1px 25px 35px rgba(16,16,16,0.2),
    1px 30px 60px rgba(16,16,16,0.4);
}

.name_to {
    position: absolute;
     top: 218px;
    right: 70px;
    transform: translate(50%,-50%);
    text-transform: uppercase;
    font-family: verdana;
    font-size: 20px;
    font-weight: 500;
    color: #f5f5f5;
    text-shadow: 1px 1px 1px #919191,
        1px 2px 1px #919191,
        1px 3px 1px #919191,
/*        1px 4px 1px #919191,
        1px 5px 1px #919191,
        1px 6px 1px #919191,
        1px 7px 1px #919191,
        1px 8px 1px #919191,
        1px 9px 1px #919191,
        1px 10px 1px #919191,*/
    1px 18px 6px rgba(16,16,16,0.4),
    1px 22px 10px rgba(16,16,16,0.2),
    1px 25px 35px rgba(16,16,16,0.2),
    1px 30px 60px rgba(16,16,16,0.4);
}



.name_Pro {
    position: absolute;
     top: 243px;
    right: 70px;
    transform: translate(50%,-50%);
    text-transform: uppercase;
    font-family: verdana;
    font-size: 20px;
    font-weight: 500;
    color: #f5f5f5;
    text-shadow: 1px 1px 1px #919191,
        1px 2px 1px #919191,
        1px 3px 1px #919191,
/*      1px 4px 1px #919191,
        1px 5px 1px #919191,
        1px 6px 1px #919191,
        1px 7px 1px #919191,
        1px 8px 1px #919191,
        1px 9px 1px #919191,
        1px 10px 1px #919191,*/
    1px 18px 6px rgba(16,16,16,0.4),
    1px 22px 10px rgba(16,16,16,0.2),
    1px 25px 35px rgba(16,16,16,0.2),
    1px 30px 60px rgba(16,16,16,0.4);
}
.three-column-footer-contact-form-container {
  background-color: $dark-gray;

  .three-column-footer-contact-form {
    @include grid-row();
    color: $white;
    padding: rem-calc(60) 0;

    a {
      color: $black;
    }

}
  h2.thick {
  font-weight: bold;
}
  
  h2.thicker {
  font-weight: 900;
}

  
</style>
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
	href="css1/custom-responsive-style1.css">
<link href="//fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
 
  <script type="text/javascript">
  
  function regular_map() {
      var var_location = new google.maps.LatLng(40.725118, -73.997699);

      var var_mapoptions = {
          center: var_location,
          zoom: 14
      };

      var var_map = new google.maps.Map(document.getElementById("map-container"),
          var_mapoptions);

      var var_marker = new google.maps.Marker({
          position: var_location,
          map: var_map,
          title: "New York"
      });
  }

  // Initialize maps
  google.maps.event.addDomListener(window, 'load', regular_map);

//Carousel options

$('.carousel').carousel({
      interval: 3000,
  })
  
  </script>
</head>
<body >


    <header>

        <!--Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar">

            <div class="container">

                <!-- Navbar brand -->
                <a class="navbar-brand" href="#">Home</a>

                <!-- Collapse button -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
                    aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Collapsible content -->
                <div class="collapse navbar-collapse" id="basicExampleNav">
 				 
 			
                    <!-- Links -->
                    <ul class="navbar-nav mr-auto smooth-scroll">
                        <li class="nav-item">
                          
                            <a class="nav-link" href="#process">Process</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#aboutUs">About us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#team">Core Team</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contact">contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="loginUser.htm">Login</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="getdirection.jsp">Get Direction</a>
                        </li>
                         <li class="nav-item">
						      <a class="nav-link" href="map2.jsp">Map</a>
						  </li>
						   <li class="nav-item">
						      <a class="nav-link" href="marker.jsp">Marker</a>
						   </li>
                    </ul>
                    <!-- Links -->

                    <!-- Social Icon  -->
                    <ul class="navbar-nav nav-flex-icons">
                        <li class="nav-item">
                            <a class="nav-link"><i class="fab fa-facebook"></i></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link"><i class="fab fa-twitter"></i></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link"><i class="fab fa-instagram"></i></a>
                        </li>
                    </ul>
                </div>
                <!-- Collapsible content -->

            </div>

        </nav>
        <!--/.Navbar-->

        <!--Mask-->
        <div id="intro" class="view">

            <div class="mask rgba-black-strong">

                <div class="container-fluid d-flex align-items-center justify-content-center h-100">

                    <div class="row d-flex justify-content-center text-center">

                        <div class="col-md-10">

                            <!-- Heading -->
<!--                             <h2 class="display-4 font-weight-bold white-text pt-5 mb-2">Welcome</h2> -->
							<span class="text">Welcome</span>
							<span class="name_to">To</span>
							<span class="name_Pro">SAFE_CITY_LABELLING_SYSTEM</span>
							
							
                            <!-- Divider -->
                            <hr class="hr-light">

                            <!-- Description -->
                          
                           

                        </div>

                    </div>

                </div>

            </div>

        </div>
        <!--/.Mask-->

    </header>
    <!--Main Navigation-->

    <!--Main layout-->
    <main class="mt-5">
        <div class="container">

            <!--Section: Best Features-->
            <section id="process" class="text-center">

                <!-- Heading -->
                <h2 class="mb-5 font-weight-bold">The Process</h2>

                <!--Grid row-->
                <div class="row d-flex justify-content-center mb-4">

                    <!--Grid column-->
                    <div class="col-md-8">
	
                        <!-- Description -->
                        <p class="grey-text">It is a free service to help you find the best place to live
						based on the crime rates in that locality.The information here is
						gathered from various e-newspapers.</p>

                    </div>
                <!--Grid column-->

                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
				<div class="col-md-4 mb-1 ">
                        <h1><i class="glyphicon glyphicon-home"></i></h1>
                        <h4 class="my-4 font-weight-bold">Enter An Area</h4>
                        <p class="grey-text">Type an address, neighborhood,
							zip code or city to find the safe places to live in and around
							that location</p>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                   <div class="col-md-4 mb-1">
                         <h1><i class="glyphicon glyphicon-search"></i></h1>
                        <h4 class="my-4 font-weight-bold">LookOut For Safe Places</h4>
                        <p class="grey-text">You will get the list of places
							in color codes according to their livability score</p>
                    </div>
                    <!--Grid column-->

          <!--Grid column-->
                    <div class="col-md-4 mb-1">
                    
                         <h1><i class="glyphicon glyphicon-send"></i></h1>
                        <h4 class="my-4 font-weight-bold">Explore The Best Places</h4>
                        <p class="grey-text">You can also find best places
							around that locality</p>
                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

            </section>
            <!--Section: Best Features-->

     
            <hr class="my-5">

            <!--Section: Gallery-->
            <section id="aboutUs">

                <!-- Heading -->
                <h2 class="mb-5 font-weight-bold text-center">About Us</h2>

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-6 mb-4">

                        <!--Carousel Wrapper-->
                        <div id="carousel-example-1z" class="carousel slide carousel-fade carousel-fade" data-ride="carousel">
                            <!--Indicators-->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-1z" data-slide-to="1"></li>
                                <li data-target="#carousel-example-1z" data-slide-to="2"></li>
                            </ol>
                            <!--/.Indicators-->
                            <!--Slides-->
                            <div class="carousel-inner z-depth-1-half" role="listbox">
                                <!--First slide-->
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="images1/aboutus.gif"
                                        alt="First slide">
                                </div>
                                <!--/First slide-->
                                <!--Second slide-->
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images1/aboutus2.jpg"
                                        alt="Second slide">
                                </div>
                                <!--/Second slide-->
                                <!--Third slide-->
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images1/aboutus1.jpg"
                                        alt="Third slide">
                                </div>
                                <!--/Third slide-->
                            </div>
                            <!--/.Slides-->
                            <!--Controls-->
                            <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                            <!--/.Controls-->
                        </div>
                        <!--/.Carousel Wrapper-->

                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6">

                        <!--Excerpt-->
                        <a href="" class="teal-text">
                            <h6 class="pb-1"><i class="fa fa-heart"></i><strong> Secure City </strong></h6>
                        </a>
                      
                      <p>Secure Area Indicating system is a web application which provides information about city and its safe areas through which users can view the safe and unsafe areas. The main objective is to identify the unsafe areas using various news articles and label them on map.
Our project is targeted to make people aware about areas safety. The Admin can view crime performance in mapping format and also this application will help people to know information about crime of that particular place. It is more helpful for people who are new and going to shift their place so that they can easily know which area is secure and which is in danger zone and user can easily get the crime place so for new person it will be helpful to secure their life.
</p>
                       

                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

            </section>
            <!--Section: Gallery-->
            <hr class="my-5">

            <!--Section: Examples-->
            <section id="team" class="text-center">

                <!-- Heading -->
                <h2 class="mb-5 font-weight-bold">Team Secure Area</h2>
	<p>We perform various activities to make people aware about the
						were abouts in their society with respect to crime</p>
                <!--Grid row-->
                <div class="row">
	
	 <!--Grid column-->
                    <div class="col-lg-6 col-md-16 mb-4">

                        <div class="view overlay z-depth-1-half">
                            <img src="images1/Chakradhar.jpeg" class="img-fluid" alt="" width="200px" height="500px">
                            <div class="mask rgba-white-slight"></div>
                        </div>

                        <h4 class="my-4 font-weight-bold">Chakradhar Patil (TL) </h4>
                        <p class="grey-text">chakradharpatil.nmims@gmail.com</p>

                    </div>
                    <!--Grid column-->
	
	
	
	
	
	
	
	 <!--Grid column-->
                    <div class="col-lg-6 col-md-12 mb-4">

                        <div class="view overlay z-depth-1-half">
                            <img src="images1/Bhushan.jpeg" class="img-fluid" alt="" width="200px" height="500px">
                            <div class="mask rgba-white-slight"></div>
                        </div>

                        <h4 class="my-4 font-weight-bold">Bhushan Vangvar </h4>
                        <p class="grey-text">vangvarbhushan582@gmail.com</p>

                    </div>
                    <!--Grid column-->
	
	
	
                    <!--Grid column-->
                    <div class="col-lg-6 col-md-6 mb-4">

                        <div class="view overlay z-depth-1-half">
                            <img src="images1/Akash.jpeg" class="img-fluid" alt="" width="200px" height="500px">
                            <div class="mask rgba-white-slight"></div>
                        </div>

                        <h4 class="my-4 font-weight-bold">Akash Karande</h4>
                        <p class="grey-text">akashakarande1999@gmail.com</p>

                    </div>
                    <!--Grid column-->
               
			
                    <!--Grid column-->
                    <div class="col-lg-6 col-md-6 mb-4">

                        <div class="view overlay z-depth-1-half">
                            <img src="images1/Hanumant.jpeg" class="img-fluid" alt="" width="200px" height="500px">
                            <div class="mask rgba-white-slight"></div>
                        </div>

                        <h4 class="my-4 font-weight-bold">Hanumant Awachar</h4>
                        <p class="grey-text">awacharhn@gmail.com</p>

                    </div>
                    <!--Grid column-->

                   
                 
                   <!--Grid column-->
                    <div class="col-lg-6 col-md-12 mb-4">

                        <div class="view overlay z-depth-1-half">
                            <img src="images1/Shashank.jpeg" class="img-fluid" alt="" width="200px" height="500px">
                            <div class="mask rgba-white-slight"></div>
                        </div>

                        <h4 class="my-4 font-weight-bold">Shashank Wadjikar</h4>
                        <p class="grey-text">sswadjikar02@gmail.com</p>

                    </div>
                    <!--Grid column-->
                   
                   
                    <!--Grid column-->
                    <div class="col-lg-6 col-md-12 mb-4">

                        <div class="view overlay z-depth-1-half">
                            <img src="images1/Shubham.jpeg" class="img-fluid" alt="" width="200px" height="500px">
                            <div class="mask rgba-white-slight"></div>
                        </div>

                        <h4 class="my-4 font-weight-bold">Shubham Ingale</h4>
                        <p class="grey-text">shubhamingale96.si@gmail.com</p>

                    </div>

                </div>
                <!--Grid row-->

            </section>

            <hr class="my-5">

            <!--Section: Contact-->
         <section id="contact"> 
         <h1 align="center"><b>Contact details</b></h1>
<div class="three-column-footer-contact-form-container">
  <footer class="three-column-footer-contact-form" data-equalizer data-equalize-by-row="true">
    <div class="footer-left" data-equalizer-watch>
      <div class="baseline">
        <div class="contact-details">
          
          <p><i class="glyphicon glyphicon-phone" aria-hidden="true"></i><span>+91-9665355706</span></p>
         
          <p><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><span>Pune-411017</span></p>
            <p><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>vangvarbhushan582@gmail.com</p>
       		 </div>
       		 </div>
        	</div>
        </footer>
       </div>
       <div class="login" align="center">
       <br><br>
          <a href="login11.htm"><button class="btn btn-success" >Login</button></a>
           <p><a href="#"><i class="glyphicon glyphicon-circle-arrow-left" aria-hidden="true"></i>Back to Home Page</a></p>
         </div>
		<!-- Footer section ends here -->
    </section>

	
</body>

</html>