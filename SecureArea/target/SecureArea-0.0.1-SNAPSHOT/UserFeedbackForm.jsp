<%@page import="java.util.List"%>
<%@page import="com.project.safevibe.dto.Admin"%>
<%@page import="com.project.safevibe.dto.Admin"%>
<%@page import="com.project.safevibe.dto.Feedback"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
 	Admin admin  = (Admin)session.getAttribute("admin");
 %>   
 <%
 	 String msg = (String)request.getAttribute("msg");
 %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Feedback</title>
<style>
		body,
		html {
			margin: 0;
			padding: 0;
			height: 100%;
			background: grey !important;
			
		}
.contact-form{
    background: #fff;
    margin-top:5%;
    margin-bottom: 10%;
    width: 100%;
     background: black;
    border-style: solid;
    border-size:90px;
    border-color:#c0392b
   
}
.contact-form .form-control{
    border-radius:1rem;
  
}

.contact-form form{
    padding: 14%;
  
}
.contact-form form .row{
    margin-bottom: -4%;
      margin-top: -4%;
}
.contact-form h1{
    margin-bottom: 8%;
    margin-top: -10%;
    text-align: center;
    color: #0062cc;
       
}




.contact-form .btnContact {
    width: 50%;
    border: none;
    border-radius: 1rem;
    padding: 1.5%;
    background: #dc3545;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
}
.btnContactSubmit
{
    width: 50%;
    border-radius: 1rem;
    padding: 1.5%;
    color: #fff;
    background-color: #0062cc;
    border: none;
    cursor: pointer;
}
.logout{
	position: absolute;
    top: 60px;
    right: 50px;
    float: right;
    padding: 10px 25px;
   	
    

}
.userhomepage{
	position: absolute;
    top: 60px;
    right: 150px;
    float: right;
    padding: 10px 25px;  

}
div a{
	color: aqua;

}
.msg{
	top: 520px;
	position: absolute;
    right: 500px;
    float: right;
    padding: 10px 25px;
	
}


</style>
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
	<div class="container contact-form">
         
            <form method="post" action="user_feedback.htm" >
                <h1 style="color:white;font-size:60px" align="center"><b>Feedback Form</b></h1><br><br>
               
               <div class="row">
                    <div class="col-md-6 ">
                    
                        <div class="form-group">
                        <label style="color:white; font-size:20px;">Name:</label><input type="text" name="txtName" class="form-control " placeholder="Your Name *" value="" />
                        </div>
                        <div class="form-group ">
               
                          <label style="color:white;font-size:20px;">Email Address:</label> <input type="text" name="txtEmail" class="form-control " placeholder="Your Email *" value="" />
                        </div>
                   
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Submit" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                          <label style="color:white;font-size:20px;" font-size>Message:</label>  <textarea name="txtMsg" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;"></textarea>
                        </div>
                    </div>
                </div>
            </form>
</div>
 <div class="msg"><font color="red" ><h4><%=msg %></h4></font></div>
<div class="logout">
	<a href="loginUser.jsp">Logout</a>
</div>
 <div class="userhomepage">
 <a href="userHomePage.jsp">Home</a>	
 
 </div>
</body>
</html>