<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JobSeeker Register page</title>
</head>
<body>
<form  name="form" action="SeekerRegisterServlet" method="post" onsubmit="return validate()">
    <div class="modal-content"> 
    <div class="container">
    <img class="myImage" src="Logo.png"alt="pics" style="width:20%">
      <h1>Register Now on Sparkle.com</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="jobSeekerId"><b>CandidateId</b></label>
      <input type="text" placeholder="Enter"  Id="jobSeekerId" name="jobSeekerId" >
      
      <label for="name"><b>Name</b></label>
  	  <input type="text" placeholder="Enter name"  Id="name" name="name" >
     
      <label for="pswd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password"  Id="password" name="password">

      <label for="address"><b>Address</b></label>
      <input type="text" placeholder="Enter Address" Id="address" name="address" >
      
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" Id="emailId" name="emailId" >
      
      <!-- <label for="educationQualification"><b>EducationQualification</b></label>
      <input type="text" placeholder="Enter" Id="educationQualification" name="educationQualification" > -->
      <b>EducationQualification
      <Select name=educationQualification>
      <option value = "B.Tech" Selected>B.Tech</option>
      <option value = "B.Com" Selected>B.Com</option>
      <option value = "BA" Selected>BA</option>
      <option value = "B.Arch" Selected>B.Arch</option>
      <option value = "BSc" Selected>BSc</option>
      <option value = "BEd" Selected>BEd</option>
      <option value = "B.Pharm" Selected>B.Pharm</option>
      <option value = "B.Design" Selected>B.Design</option>
      
      </Select>
      
      <label for="mobileNumber"><b>Mobile</b></label>
      <input type="text" placeholder="Mobile Number"  Id="mobileNumber" name="mobileNumber" >
      
      <b>Preferred Location
      <Select name=preferredLocation>
      <option value = "Madurai" Selected>Madurai</option>
      <option value = "Chennai" Selected>Chennai</option>
      <option value = "Bangalore" Selected>Bangalore</option>
      <option value = "Tirupathi" Selected>Tirupathi</option>
      <option value = "Hyderabad" Selected>Hyderabad</option>
      <option value = "Delhi" Selected>Delhi</option>
      <option value = "Kolkata" Selected>Kolkata</option>
      <option value = "Pune" Selected>Pune</option>
      
      </Select>
     
       <label for="skills"><b>Skills Sets</b></label>
      <input type="text" placeholder="Enter Your Skills" Id="skills" name="skills" >
      
      <label for="uploadResume"><b>Upload Resume</b></label><br><br>
      <input type="file"  Id="uploadResume"   name="uploadResume" >
      
 
    <!--id="myFile"  <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>  -->

      <div class="clearfix">
       <button type="submit" class="signupbtn">Sign Up</button>
       <button type="button" class="cancelbtn" onClick="window.location.href='HomePage.jsp'">Cancel</button>
       <!-- <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>   
      <button type="button" class="cancelbtn" onClick="window.location.href='HomePage.jsp'">Cancel</button>-->
      </div>
    </div>
</div>
  </form>
  
</body>
</html>

<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}
select{
width:100%;
padding: 15px;
margin: 5px 0 22px 0;
display: inline-block;
border: none;
background: #f1f1f1;
}
button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn  {
float:left;
width:100%;
text-align:center;  
}
.signupbtn{
float:left;
width:98%;
text-align:center;
}

/* Add padding to container elements rgb(5, 8, 211)*/
.container {
    background-image: url("pexels.jpeg");
    padding: 40px;
    color:black;
    
    border-style: solid;
    
    border-color: lightblue;
    
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}


</style>

<script>
function dispAlert()
{
 	alert("Not Successfully Registered Try Again");
}
var test = <%=request.getAttribute("srgt")%>;
if(test == true)
{
dipAlert();
}	
function validate()
{ 
	var jobSeekerId = document.getElementById("jobSeekerId").value;
	if(jobSeekerId.trim() == "")
	  {
	  alert("Enter CandidateId");
	  return false;
  }
	var name = document.getElementById("name").value;
	 if(name==""){
		 alert("Please fill Name");	
			    	 return false;
	             }
	 else{
		 if(name.length<3)
			 {
			 alert("Name Should Be Minimum 3 Characters");	
	    	 return false;
			 }
		  }

	var password = document.getElementById("password").value;
	if(password ==""){
		 alert("Please fill password");	
			    	 return false;
	             }
	else{
		 if(password.length<5)
			 {
			 alert("password Should Be Minimum 5 Characters");	
	    	 return false;
			 }
		  }
	
	var address = document.getElementById("address").value;
	if(address==""){
		 alert("Enter your Address");	
			    	 return false;
	             }
	var emailId = document.getElementById("emailId").value;
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

	 if(emailId==""){
		 alert("Please fill mail address");	
			    	 return false;
	 }
	var mobileNumber = document.getElementById("mobileNumber").value;
	 
	 if(mobileNumber==""){
		 alert("Please fill mobile number");	
			    	 return false;
	             }
	  else{
		  if(mobileNumber.length!=10){
			  alert("MobileNumber must be 10 digits");	
		    	 return false;
			  
		  }
        }
	 var skills = document.getElementById("skills").value;
		if(skills ==""){
			 alert("Please fill skills");	
				    	 return false;
		             }
		var uploadResume = document.getElementById("uploadResume").value;
		 if(uploadResume==""){
			 alert("Please choose file");	
				    	 return false;
		             }
	
	var city = document.getElementById("city").value;
	if(city==""){
			 alert("Please fill city");	
				    	 return false;
		             }
		
}	
</script>


<!-- function myFunction() {
    var x = document.getElementById("myFile");
    x.disabled = true;
}
var educationQualification = document.getElementById("educationQualification").value;
		if(educationQualification ==""){
			 alert("Please fill EducationQualification Details");	
				    	 return false;
		             }
		function passwordfunction(){
			 alert("Password should have atleast One uppercase,lowercase,speciel,numeric");	
			 	
		}
		function emailfunction(){
			 alert("example@gmail.com");	
	} -->
