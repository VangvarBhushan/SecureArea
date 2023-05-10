<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

#portfolio {
background-color: #EFF0F0;
}


body {

    background-image: url(https://images3.alphacoders.com/101/1011100.jpg) !important;

	
	  height: 500px; /* You must set a specified height */
	  background-position: center; /* Center the image */
	  background-repeat: no-repeat; /* Do not repeat the image */
	  background-size: cover; /* Resize the background image to cover the entire container */
	 background-attachment:fixed; 

 
    
}

form{
	background-color:black;
	margin-left:200px;
	margin-right:200px;
	border: 5px solid #c0392b 
}
.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  position:center;
}

.btn:hover {
  opacity: 1;
}
.container form input[type="text"] {
    padding: 15px 20px;
    position:center;
    padding-right: 100px;
    border-color: white;
    border-radius: 4px;
   	height:40px;
 	position: absolute;
    top: 180px;
    right: 5px;
    float: right;
    padding: 10px 25px;
    left:480px;
    width: 300px;
    
}




label{
 	position: absolute;
    top: 90px;
    left: 380px;
    float: right;
    padding: 10px 25px;
   	font-size:50px;
    color: white;
    position:center;

}

h2 {
  font-style: italic;
   display: flex;
   align-content: center;
}
body .Button,
body .button {
    background-color: #c0392b ;
    background-image: none
}

input[type="submit"] {
    -webkit-appearance: button;
    cursor: pointer
}

.Button,
.Button:hover,
.Button:focus,
.Button:active {
    text-shadow: none;
    border-color: transparent;
    }
.Button {
    display: inline-block;
    padding: 6px 12px;
    vertical-align: middle;
    font-size: 16px;
    font-weight: 700;
    line-height: 22px;
    text-transform: uppercase;
    border: transparent solid 1px;
    border-radius: 3px;
    -webkit-transition: -webkit-box-shadow 80ms;
    transition: -webkit-box-shadow 50ms;
    -o-transition: box-shadow 50ms;
    transition: box-shadow 50ms;
    transition: box-shadow 50ms, -webkit-box-shadow 50ms;
    -webkit-font-smoothing: inherit;
    color: #fff;
    position:center;
    margin-top:170px;
    margin-left:300px;
    background-color: red ;
    background-repeat: repeat-x;
    background-color: red;
    background-image: -webkit-linear-gradient(#38a2f7, #2498f7);
    background-image: -webkit-gradient(linear, left top, left bottom, from(#38a2f7), to(#2498f7));
    background-image: -o-linear-gradient(#38a2f7, #2498f7);
    background-image: linear-gradient(#38a2f7, #2498f7)
}

</style>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
 <script src="https://code.jquery.com/jquery-3.4.0.js" integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo=" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     
    </div>
   
    <ul class="nav navbar-nav">
      <li class="active"><a href="index1.jsp">Home</a></li>
      <li><a href="index1.jsp#aboutUs">About Us</a></li>
      <li><a href="feedbackContr.htm">Feedback</a></li>
      <li><a href="index1.jsp#contact">Contact Us</a></li>
      <li><a href="registerUser.htm">New Registration</a></li>
      <li><a href="map2.jsp">Map</a></li>
    </ul>
  </div>
</nav>

<div class="container">
 <form action="http://maps.google.com/maps" method="get" target="_blank">
  <label for="saddr"> Enter your location</label>
  <input type="text" name="saddr" />
  <input type="hidden" name="daddr" value="Manikchand Galleria, Office No. 401, A-wing, Swastik Society, Model Colony, Shivajinagar, Pune, Maharashtra 411016" placeholder="Enter the Area" />
<!--   <input type="submit" value="Get directions" /> -->
 <input type="submit" id="Form_Go" class="Button"  class="btn btn-danger" value="Get Direction"><br><br>
  

			
</form>
</div>

</body>
</html>
