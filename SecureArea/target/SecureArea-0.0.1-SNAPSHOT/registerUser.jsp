<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>   
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
body,
		html {
			margin: 0;
			padding: 0;
			height: 100%;
			 background: grey !important; 
			
		}
		.contain{
		background: black;
		}
		.container{
		color:white;
		}
		.input-group{
			background: #c0392b !important;
			color: white !important;
			border: 0 !important;
			border-radius: 0.25rem 0 0 0.25rem !important;
		}
		
		
		
    <style type="text/css">
 @media only screen and (max-device-width:540px) {
    	   .mobileLabel{
   text-align: left;
   }
   	 .mobilePad{
   margin-left: 4em;
   }
}
@media only screen and (max-device-width:750px) and
	(orientation:landscape) {
.mobileLabel{
   text-align: left;
   }
    .mobilePad{
   margin-left: 11%;
   }
	}
		.boxStyle{
margin-left: 20%;width: 60%;
}
.home{
	position: absolute;
    top: 70px;
    right: 50px;
    float: right;
    padding: 10px 25px;
   	left: 330px;
    font-size: 50px;

}
.fa-home{
	color: white;
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
	href="css1/custom-responsive-style.css">
<link href="//fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
	<link rel='stylesheet' href='http://codepen.io/assets/libs/fullpage/jquery-ui.css'>

    <link rel="stylesheet" href="css2/style.css" media="screen" type="text/css" />
<script type="text/javascript" src="script/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="script/all-plugins.js"></script>
<script type="text/javascript" src="script/plugin-active.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
 <script src="https://code.jquery.com/jquery-3.4.0.js" integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo=" crossorigin="anonymous"></script>
        
<script type="text/javascript">
$(document).ready(function() {
	 $("#view_button3").bind("mousedown touchstart", function() {
	        $("#password").attr("type", "text");
	    }), $("#view_button3").bind("mouseup touchend", function() {
	        $("#password").attr("type", "password");
	    }), $("#view_button4").bind("mousedown touchstart", function() {
	        $("#verifypassword").attr("type", "text");
	    }), $("#view_button4").bind("mouseup touchend", function() {
	        $("#verifypassword").attr("type", "password")
	    })
	});
	function passwordChecker(){
										 $('#verifypassword').val('');
										 $('#message1').html(''); $('#message8').html(''); $('#message10').html('');$('#message15').html('');
										 $('#message').html('');$('#message2').html('');$('#message3').html('');$('#message4').html('');$('#message5').html('');$('#message6').html('');$('#message7').html('');
										 if($('#password').val().length>=1){
										 if(newValPassPoilcy()===true ){
											 $('#message').css('color','green');
											 $('#message').html('Although looks like a good password, try to make it more stronger');
										 if($('#password').val().length>=9){
											 $('#message').html('');
											 $('#message1').html('');
										 } 
											return true;
										}
										 }
										  
										 
									}
		function NumAndWordRep(){
										 var password = $('#password').val().toLowerCase();
										if(password.match(/(.)\1\1/)){
										//	alert("Your Password cannot contain Character or Number repetition");
										$('#message7').css('color','red');
											 $('#message7').html('Your Password cannot contain Character or Number repetition.');
											return false;
										}
										return true;
		}
	function userNameAsPass(){
									 var password = $('#password').val().toLowerCase();
										var fname=$('#firstname').val().toLowerCase();
										var lname=$('#lastname').val().toLowerCase();
										var fname1 = new RegExp(fname);
										var lname1 = new RegExp(lname);
										if(!(null!==fname &&''!==fname)){
											
											 $('#message6').html('');
												$('#message10').css('color','red');
												$('#message10').css('font-weight','bold');
												
												 $('#message10').html('Please enter your firstname first !!');
										}
										if(!(null!==lname &&''!==lname)){
											
											 $('#message6').html('');
												$('#message15').css('color','red');
												$('#message15').css('font-weight','bold');
												
												 $('#message15').html('Please enter your lastname first !!');
										}
										return true;
									
									}
			function  newValPassPoilcy(){
									
										  var password = $('#password').val();
								if(!password.match(/^(?=.{6,})(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&_+=\\*\\-\\(\\)\\{\\}\\:\\;\\<\\>\\|\\,\\.\\?\\/\\'\\"]).*$/) || userNameAsPass()===false || NumAndWordRep()===false){
											
											 $('#message8').css('color','red');
											  $('#message8').html('Your password must contain:-');
										  if(!password.match(/^(?=.{6,}).*$/)){
											  $('#message').css('color','red');
											  $('#message').html(' - minimum 6 characters.');
											 
										  }
										   if(!password.match(/^(?=.*[0-9]).*$/)){
											  $('#message2').css('color','red');
											  $('#message2').html(' - at least 1 Number.');
											  
										  }
										   if(!password.match(/^(?=.*[a-z]).*$/))
										  {
											  $('#message3').css('color','red');
											  $('#message3').html(' - at least 1 Lowercase character.');
										  
										  }
										   if(!password.match(/^(?=.*[A-Z]).*$/)){
											  $('#message4').css('color','red');
											  $('#message4').html(' - at least 1 Uppercase character.');
											  
										  }
										   if(!password.match(/^(?=.*[!@#$%^&_+=\\*\\-\\(\\)\\{\\}\\:\\;\\<\\>\\|\\,\\.\\?\\/\\'\\"]).*$/)){
											 
											  $('#message5').css('color','red');
											  $('#message5').html('	- at least 1 Special character.');
											 
										  }
										   if(userNameAsPass()===false){
											   if(password.match(/^(?=.{6,})(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&_+=\\*\\-\\(\\)\\{\\}\\:\\;\\<\\>\\|\\,\\.\\?\\/\\'\\"]).*$/)){
												   $('#message8').html('');  
											   }
											
										  }
										   if(NumAndWordRep()===false){
											   if(password.match(/^(?=.{6,})(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&_+=\\*\\-\\(\\)\\{\\}\\:\\;\\<\\>\\|\\,\\.\\?\\/\\'\\"]).*$/)){
												   $('#message8').html('');  
											   }
											  
										  } 
										  return false;
						    } 
										  else{
											 
											return true;
										  }
										 
									  }	
		function submitForm(){
			
		     if(document.getElementById("firstname").value.trim()==="" && document.getElementById("firstname").value!==null){
		      $('#message1').css('color','red');
				 $('#message1').html('Please enter your firstname');   
		     }
		     else  if(document.getElementById("lastname").value.trim()==="" && document.getElementById("lastname").value!==null){
			      $('#message1').css('color','red');
					 $('#message1').html('Please enter your lastname');   
			     }
		     else if(document.getElementById("yourEmail").value.trim()==="" && document.getElementById("yourEmail").value!==null){
		      $('#message1').css('color','red');
				 $('#message1').html('Please enter your Email ID');   
		     }
		     else if(checkEmail()===false){
		          $('#message1').css('color','red');
				 $('#message1').html('Enter a valid Email address'); 

		     }
		      else if(document.getElementById("password").value.trim()==="" && document.getElementById("password").value!==null){
		      $('#message1').css('color','red');
				 $('#message1').html('Please enter your Password');   
		     }
		      else if(document.getElementById("verifypassword").value.trim()==="" && document.getElementById("verifypassword").value!==null){
		      $('#message1').css('color','red');
				 $('#message1').html('Please confirm your password');   
		     }
		     
		  else{
		      var password=$('#password').val();
		      var confirm=$('#verifypassword').val();
		      if(newValPassPoilcy()===true ){
		    
		    	  if(password==confirm){
		    	  
		          $('#message1').css('color','green');
		          
		        
		           var x = document.getElementById("valuser").type = "submit";
		          document.getElementById("#message1").innerHTML = "Register successfully!!!"; 
		    	  }
		      
		      else{
		          $('#message1').css('color','red');
				 $('#message1').html('Confirm password and password must be same');   
				 return false;
		      }
		      }
		      return true;
		  }
		   
		}	
		function checkEmail(){
		   var email=$('#yourEmail').val();
		  if((email.indexOf(".") > 2) && (email.indexOf("@") > 0)){
		     return true; 
		  }
		  else{
		     return false;		 
		  }
		    
		}
</script>
</head>
<body data-spy="scroll" data-target=".main-navigation" data-offset="150">

    
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 boxStyle" style="padding-right: 0px!important;padding-left: 0px!important;">
		   <div class="panel-body" style="padding-right: 4px!important;padding-left: 4px!important;">
		   <div class="contain">
                 <form method="post" name="challenge"  class="form-horizontal" role="form" action="regUser.htm" onSubmit="return submitForm()" AUTOCOMPLETE = "off" >
				<fieldset class="landscape_nomargin" style="min-width: 0;padding:    .35em .925em .75em!important;margin:0 2px;border: 2px solid silver!important;margin-bottom: 10em;">
		
	<h2 align="center"><b>Registration Form</b></h2>
		
			<div class="form-group">
						 <div class="col-sm-12 col-md-12 col-lg-12 col-xs-12" style="text-align: right!important;">
						 <span style="color: red">*</span> <span style="font-size: 8pt;">mandatory fields</span>
						 </div>
						</div>	
			 <div class="form-group" style="margin-bottom: 0px;">
                    <div class="col-sm-4 col-md-4 col-lg-5 col-xs-1"></div><div class="col-sm-8 col-md-8 col-lg-7 col-xs-10 mobilePad" id="message10" style=" font-size: 10pt;padding-left: 0px;"></div>                      

                    </div>				
		 <div class="form-group">
                     <div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
                       <div class="col-sm-4 col-md-4 col-lg-5 col-xs-10 mobileLabel" style=" padding-top: 7px; text-align: right;">
                            FirstName <span style="color: red">*</span> :</div>
                        
						<div class="col-sm-6 col-md-6 col-lg-5 col-xs-9 input-group mobilePad" style="font-weight:600;">
						
						<input style="border-radius: 4px!important;" type="text"  class="form-control" name="firstname" id="firstname" >                   
                                         
                        </div>
                       <div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
               </div>
               <div class="form-group">
                     <div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
                       <div class="col-sm-4 col-md-4 col-lg-5 col-xs-10 mobileLabel" style=" padding-top: 7px; text-align: right;">
                           LastName <span style="color: red">*</span> :</div>
                        
						<div class="col-sm-6 col-md-6 col-lg-5 col-xs-9 input-group mobilePad" style="font-weight:600;">
						
						<input style="border-radius: 4px!important;" type="text"  class="form-control" name="lastname" id="lastname" >                   
                                         
                        </div>
                       <div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
               </div>
         <div class="form-group">
                     <div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
                       <div class="col-sm-4 col-md-4 col-lg-5 col-xs-10 mobileLabel" style=" padding-top: 7px; text-align: right;">
                            Your Email <span style="color: red">*</span> :</div>
                        
						<div class="col-sm-6 col-md-6 col-lg-5 col-xs-9 input-group mobilePad" style="font-weight:600;">
						
						<input style="border-radius: 4px!important;" type="email"  class="form-control" name="yourEmail" id="yourEmail">                   
                                         
                        </div>
                       <div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
                    </div> 
                    
             <div class="form-group">
                    	 
             <div class="form-group" style="margin-bottom: 0px;!important">
                    	 
        <div class="form-group " style="margin-bottom: 5px;">
                     <div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
                       <div class="col-sm-4 col-md-4 col-lg-5 col-xs-10 mobileLabel" style=" padding-top: 7px;text-align: right;">
                          Your Password <span style="color: red">*</span> :</div>
                        
						<div class="col-sm-6 col-md-6 col-lg-5 col-xs-9 input-group mobilePad">
						
						<input type="password" onkeyup="passwordChecker()" name="password" id="password" class="form-control"><span class="input-group-btn"><button class="btn btn-defaultCUST" id="view_button3" style=" height: 34px;padding-left: 7px;" type="button"><span class="glyphicon glyphicon-eye-open" ></span>                   
                             </button></span>                    
                                      
                        </div>
                         <div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
                        
                    </div>  
                 <div class="form-group" style="margin-bottom: 5px;">
                    <div class="col-sm-4 col-md-4 col-lg-5 col-xs-1"></div><div class="col-sm-8 col-md-8 col-lg-7 col-xs-10 mobilePad" id="message8" style=" font-size: 10pt;padding-left: 0px;"></div>                      

                    		 <div class="col-sm-4 col-md-4 col-lg-5 col-xs-1"></div><div class="col-sm-8 col-md-8 col-lg-7 col-xs-10 mobilePad" id="message" style=" font-size: 10pt;"></div>
							<div class="col-sm-4 col-md-4 col-lg-5 col-xs-1"></div><div class="col-sm-8 col-md-8 col-lg-7 col-xs-10 mobilePad" id="message2" style=" font-size: 10pt;"></div>
							<div class="col-sm-4 col-md-4 col-lg-5 col-xs-1"></div><div class="col-sm-8 col-md-8 col-lg-7 col-xs-10 mobilePad" id="message3" style=" font-size: 10pt;"></div>
							<div class="col-sm-4 col-md-4 col-lg-5 col-xs-1"></div><div class="col-sm-8 col-md-8 col-lg-7 col-xs-10 mobilePad" id="message4" style=" font-size: 10pt;"></div>
							<div class="col-sm-4 col-md-4 col-lg-5 col-xs-1"></div><div class="col-sm-8 col-md-8 col-lg-7 col-xs-10 mobilePad" id="message5" style=" font-size: 10pt;"></div> 
							<div class="col-sm-4 col-md-4 col-lg-5 col-xs-1"></div><div class="col-sm-8 col-md-8 col-lg-7 col-xs-10 mobilePad" id="message6" style=" font-size: 10pt;padding-left: 0px;"></div>
							<div class="col-sm-4 col-md-4 col-lg-5 col-xs-1"></div><div class="col-sm-8 col-md-8 col-lg-7 col-xs-10 mobilePad" id="message7" style=" font-size: 10pt;padding-left: 0px;"></div>            
							<div class="col-sm-4 col-md-4 col-lg-5 col-xs-1"></div><div class="col-sm-8 col-md-8 col-lg-7 col-xs-10 mobilePad" id="message15" style=" font-size: 10pt;padding-left: 0px;"></div>                                
       
                    </div>
                  <div class="form-group">
                     <div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
                       <div class="col-sm-4 col-md-4 col-lg-5 col-xs-10 mobileLabel" style=" padding-top: 7px;text-align: right;">
                          Confirm Password <span style="color: red">*</span> :</div>
                        
						<div class="col-sm-6 col-md-6 col-lg-5 col-xs-9 input-group mobilePad">
					
						<input type="password" name="verifypassword" id="verifypassword" class="form-control"><span class="input-group-btn"><button class="btn btn-defaultCUST" id="view_button4" style=" height: 34px;padding-left: 7px;" type="button"><span class="glyphicon glyphicon-eye-open"></span>                  
                             </button></span>                     
                                         
                        </div>
                       <div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
                    </div>	
         <div class="form-group">
                     <div class="col-sm-12 col-md-12 col-lg-12 col-xs-12" id="message1" style="font-weight: bold; text-align: center;font-size: 10pt;">
						</div>
						 </div>	            
        <div class="form-group">
									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
									<div class="col-sm-11 col-md-11 col-lg-11 col-xs-10" style="text-align:center;">
										<button id="valuser" type="button" name="button"  onclick="submitForm()"
											class="btn btn-danger">
											Submit</button>
									</div>

									<div class="col-sm-1 col-md-1 col-lg-1 col-xs-1"></div>
								</div>   
						
			
			</fieldset>
				</form>
				</div>
                </div>
		    </div>  
	</div>
</div>
<div>
<font size="5px">
<div class="home fa fa-home">
          	<a href="index1.jsp">Home</a>
 </div>

</font>
</div>
 
</body>

</html>