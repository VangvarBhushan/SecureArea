<%@page import="com.project.safevibe.dto.CrimeRating"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	CrimeRating cr = (CrimeRating) request.getAttribute("crimerating");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">
<!-- Fontastic Custom icon font-->
<link rel="stylesheet" href="css/fontastic.css">
<!-- Google fonts - Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
<!-- jQuery Circle-->
<link rel="stylesheet"
	href="css/grasp_mobile_progress_circle-1.0.0.min.css">
<!-- Custom Scrollbar-->
<link rel="stylesheet"
	href="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
</head>
<body>
	<!-- Side Navbar -->
	<nav class="side-navbar">
		<div class="side-navbar-wrapper">
			<!-- Sidebar Header    -->
			<div
				class="sidenav-header d-flex align-items-center justify-content-center">
				<!-- User Info-->

				<!-- Small Brand information, appears on minimized sidebar-->
				<div class="sidenav-header-logo">
					<a href="index.html" class="brand-small text-center"> <strong>A</strong><strong
						class="text-primary">D</strong></a>
				</div>
			</div>
			<!-- Sidebar Navigation Menus-->
			<div class="main-menu">
				<h5 class="sidenav-heading">Main</h5>
				<ul id="side-main-menu" class="side-menu list-unstyled">
					<li><a href="index.jsp"> <i class="icon-home"></i>Home
					</a></li>
					<li><a href="AddAdmin.jsp"> <i class="icon-form"></i>Add
							New Admin
					</a></li>
					<li><a href="#exampledropdownDropdown" aria-expanded="false"
						data-toggle="collapse"> <i class="icon-interface-windows"></i>View
					</a>
						<ul id="exampledropdownDropdown" class="collapse list-unstyled ">
							<li><a href="adminDetails.htm">Admin</a></li>
							<li><a href="RatingDetails.htm">Crime Ratings</a></li>
							<li><a href="FeedbackDetails.htm">Feedback</a></li>
						</ul></li>
			</div>
	</nav>
	<div class="page">
		<!-- navbar-->
		<header class="header">
			<nav class="navbar">
				<div class="container-fluid">
					<div
						class="navbar-holder d-flex align-items-center justify-content-between">
						<div class="navbar-header">
							<a id="toggle-btn" href="#" class="menu-btn"><i
								class="icon-bars"> </i></a><a href="index.html" class="navbar-brand">
								<div class="brand-text d-none d-md-inline-block">
									<span>Admin </span><strong class="text-primary ml-2">Dashboard</strong>
								</div>
							</a>
						</div>
						<ul
							class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
							<!-- Log out-->
							<li class="nav-item"><a href="logout.jsp"
								class="nav-link logout"> <span
									class="d-none d-sm-inline-block">Logout</span><i
									class="fa fa-sign-out"></i></a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
		<section class="forms">
			<div class="container-fluid">
				<!-- Page Header-->
				<header> </header>
				<div class="row">

					<div class="col-lg-12">
						<div class="card">
							<div class="card-header d-flex align-items-center">
								<h4>Crime Rating</h4>
							</div>
							
							
							<form action="editcrime.htm">
								Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								 <input type="text" name="id" value="<%=cr.getId()%>" readonly="readonly"><br>
								City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								 <input type="text" name="city" value="<%=cr.getCity() %>"><br>
								Latitude:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" name="lat" value="<%=cr.getLat() %>"><br>
								Longitude:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" name="lan" value="<%=cr.getLan() %>"><br>
								Rating:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								 <input type="text" name="rating" value="<%=cr.getRating() %>"><br>
								<div class="form-group row">
										<div class="col-sm-4 offset-sm-2">
											<button type="submit" class="btn btn-secondary">Cancel</button>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>


							</form>
							
						</div>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JavaScript files-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
	<script
		src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="js/charts-home.js"></script>
	<!-- Main File-->
	<script src="js/front.js"></script>
</body>
</html>