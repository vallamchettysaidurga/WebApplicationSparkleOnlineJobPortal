<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Job Details</title>
</head>
<body>
<form  name="form" action="DetailsServlet" method="post"onsubmit="return validate()"  >
    <div class="modal-content"> 
    <div class="container">
    <img class="myImage" src="Logo.png"alt="pics" style="width:20%">
      <h1>Job Details</h1>
      <p>Please fill in this form to create an account.</p>
    <hr>
      <!--  <label for="providerId"><b>ProviderId</b></label>
     <input type="text" placeholder="Enter"  Id="providerId" name="providerId" >  -->
       
      <label for="jobId"><b>JobId</b></label>
      <input type="text" placeholder="Enter" Id="name" name="jobId" >
      
      <label for="jobTitle"><b>JobTitle</b></label>
  	  <input type="text" placeholder="Enter name" Id="jobTitle" name="jobTitle" >
  	  
  	  <label for="categeory"><b>Categeory</b></label>
  	  <input type="text" placeholder="Enter name"  Id="categeory" name="categeory" >
  	  
  	  <label for="description"> <b>Description</b></label>
      <textarea name="description" rows="7" cols="110"></textarea><br><br>
  	  
  	  <label for="jobLocation"><b>JobLocation</b></label>
  	  <input type="text" placeholder="Enter name"  Id="jobLocation" name="jobLocation" >
  	  
  	  <label for="jobType"><b>JobType</b></label>
  	  <input type="text" placeholder="Enter name" Id="jobType" name="jobType" >
  	  
  	  <label for="jobRole"><b>JobRole</b></label>
  	  <input type="text" placeholder="Enter name" Id="jobRole" name="jobRole" >
  	  
  	  <div class="clearfix">
  	 
  	  <!-- <button class="btn"  name="button" onclick="myFunction()">Sign Up</button> -->   
       <button type="submit" class="signupbtn" >Post</button>  
       <button type="button" class="cancelbtn" onClick="window.location.href='HomePage.jsp'">Cancel</button>
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
    background-image: url("pexels33.jpeg");
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
function validate()
{ 
	var jobId = document.getElementById("jobId").value;
	 if(jobId==""){
		 alert("Please Enter jobId");	
			    	 return false;
	      }
	 var jobTitle = document.getElementById("jobTitle").value;
	 if(jobTitle==""){
		 alert("Please Enter jobTitle");	
			    	 return false;
	      }
	 var categeory = document.getElementById("categeory").value;
	 if(categeory==""){
		 alert("Please Enter categeory");	
			    	 return false;
	      }
	 var jobLocation = document.getElementById("jobLocation").value;
	 if(jobLocation==""){
		 alert("Please Enter Location");	
			    	 return false;
	      }
	 var jobType = document.getElementById("jobType").value;
	 if(jobType==""){
		 alert("Please Enter Jobtype");	
			    	 return false;
	      }
	 var jobRole = document.getElementById("jobRole").value;
	 if(jobRole==""){
		 alert("Please Enter Jobrole");	
			    	 return false;
	      }
	}
var test = <%=request.getAttribute("job")%>;
if(test == false)
{
dipAlert();
}
function dispAlert()
{
 	alert("Not Successfully Posted Try Again");
}
 

</script>
<!-- var providerId = document.getElementById("providerId").value;
	if(providerId.trim() == "")
	  {
	  alert("Please Enter providerId");
	  return false;
  } -->