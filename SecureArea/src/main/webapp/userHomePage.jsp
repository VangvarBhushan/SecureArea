<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 body .bbbootstrap {
    background-image: url(images1/userhome.jpg) !important;
    background-size: cover;
    background-repeat:no-repeat;
    background-position: center;
    background-attachment: scroll;
    

  
     height: 100%;
}

.bbbootstrap {
    padding: 40px;
    margin-bottom: 22px;

    color: #fff;
    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
    background-color: #2e9df7;
    -webkit-box-shadow: 0 15px 15px -15px rgba(0, 0, 0, 0.25) inset, 0 -15px 15px -15px rgba(0, 0, 0, 0.25) inset;
    box-shadow: 0 15px 15px -15px rgba(0, 0, 0, 0.25) inset, 0 -15px 15px -15px rgba(0, 0, 0, 0.25) inset
}

.bbbootstrap form {
    position: relative;
    width: 540px;
    height: 440px;
    margin: 22px auto 0;
    margin-top:65px
}

span {
    margin: 0;
    padding: 0;
    border: 0;
    outline: 0;
    font-weight: inherit;
    font-style: inherit;
    font-size: 100%;
    font-family: inherit;
    vertical-align: baseline;
 
}

.bbbootstrap form input[type="text"] {
    padding: 15px 20px;
    padding-right: 100px;
    border-color: white;
    border-radius: 4px;
   	height:50px;
 	position: absolute;
    top: 180px;
    right: 5px;
    float: right;
    padding: 10px 25px
}

input.InputBox {
    font-family: "lucida grande", "Lucida Sans Unicode", tahoma, sans-serif;
    color: #333;
    font-size: 15px;
    padding: 3px;
    margin: 0;
    width: 250px;
    background: black;
    border: 1px solid #999;
    border: 1px solid rgba(0, 0, 0, 0.4)
}

input[type=text] {
    box-sizing: border-box;
    color: white;
}

.InputBox {
    display: block;
    width: 100% !important;
    
    padding: 6px 12px;
    font-size: 15px;
    line-height: 33px;
    border-radius: 4px
}
h1{
 	position: absolute;
    top: -30px;
    right: 200px;
    float: right;
    padding: 10px 25px;
   	font-size:50px;
    color: blue;

}
p{
	position: absolute;
    top: 50px;
    right: 130px;
    float: right;
    padding: 10px 25px;
   	font-size:25px;
    color: black;


}
.feedback{
	position: absolute;
    top: 10px;
    right: 50px;
    float: right;
    padding: 10px 25px;
   	left: 650px;
    

}
.bbbootstrap form input[type="submit"] {
    position: absolute;
    top: 180px;
    right: 5px;
    float: right;
    padding: 10px 25px;
    height: 50px;
}

body .Button,
body .button {
    background-color: #1268b3;
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
    border-color: transparent
}

.Button {
    display: inline-block;
    padding: 6px 12px;
    vertical-align: middle;
    font-size: 13px;
    font-weight: 700;
    line-height: 22px;
    text-transform: uppercase;
    border: transparent solid 1px;
    border-radius: 3px;
    -webkit-transition: -webkit-box-shadow 50ms;
    transition: -webkit-box-shadow 50ms;
    -o-transition: box-shadow 50ms;
    transition: box-shadow 50ms;
    transition: box-shadow 50ms, -webkit-box-shadow 50ms;
    -webkit-font-smoothing: inherit;
    color: #fff;
    background-color: #2e9df7;
    background-repeat: repeat-x;
    background-color: #38a2f7;
    background-image: -webkit-linear-gradient(#38a2f7, #2498f7);
    background-image: -webkit-gradient(linear, left top, left bottom, from(#38a2f7), to(#2498f7));
    background-image: -o-linear-gradient(#38a2f7, #2498f7);
    background-image: linear-gradient(#38a2f7, #2498f7)
}
.logout{
	position: absolute;
    top: 10px;
    right: 50px;
    float: right;
    padding: 10px 25px;
   	
    

}
.feedback{
	position: absolute;
    top: 10px;
    right: 50px;
    float: right;
    padding: 10px 25px;
   	left: 950px;
    

}
 
</style>
<link rel="stylesheet" type="text/css" href="css1/style.css">
</head>
<body>
  <div class="bbbootstrap">
     <div class="container">
         <form action="searchCity.htm">
             <span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span><h1 style="color: black;">Welcome</h1>
				<p>Find the best places to live</p>
             <div class="search"><input type="text" id="Form_Search" value="" placeholder="Search for your best result in our community" role="searchbox" class="InputBox "name="searchCity" autocomplete="off"><input type="submit" id="Form_Go" class="Button" value="GO"></div>
         </form>
         <div class="feedback">
          <a href="feedbackContr.htm">Feedback</a>
         </div>
        
         <div class="logout">
          	<a href="index1.jsp">Log out</a>
         </div>
         
     </div>
 </div>
 </body>
</html>