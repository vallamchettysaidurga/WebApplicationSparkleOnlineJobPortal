<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post Job page</title>
</head>
<body>
  <form name="form"  action="PostJobServlet" method="post" onsubmit="return validate()">
  <div class="modal-content">
    <div class="container">
    <img class="myImage" src="Logo.png"alt="pics" style="width:20%">
      <h1>Post Your Job Now</h1>
      <p>Please fill in this form</p>
      <hr>
      <label for="providerId"><b>ProviderId</b></label>
      <input type="text" placeholder="Enter" Id="providerId" name="providerId" >
      
      <label for="name"><b>Name</b></label>
      <input type="text" placeholder="Enter name" Id="name" name="name" >
     
      <label for="pswd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" Id="password" name="password" >

      <label for="companyName"><b>Company Name</b></label>
      <input type="text" placeholder="Enter name" Id="companyName" name="companyName" >
      
      <label for="description"> <b>Company Description</b></label>
      <textarea name="description" rows="6" cols="100"></textarea><br><br>
      
     <b>Location</b>
      <Select name=location>
      <option value = "Madurai" Selected>Madurai</option>
      <option value = "Chennai" Selected>Chennai</option>
      <option value = "Coimbatore" Selected>Bangalore</option>
      <option value = "Tirupathi" Selected>Tirupathi</option>
      </Select>
      
      <label for="emailId"><b>Email</b></label>
      <input type="text" placeholder="Enter mailId" Id="emailId" name="emailId" >
      
       <label for="websiteAddress"><b>Website Address</b></label>
      <input type="text" placeholder="Web Addresss" Id="websiteAddress" name="websiteAddress" >
     
       <label for="mobileNumber"><b>Contact Number</b></label>
      <input type="text" placeholder="Mobile Number" Id="mobileNumber" name="mobileNumber" >
     
     <!-- <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p> -->

      <div class="clearfix">
   
       <!--<button onclick="myFunction()" class="signup">Submit</button> -->  
       <button type="submit" class="signup">Next</button> 
       <!--<button type="button" class="signup" onsubmit="window.location.href='JobDetails.jsp'">Next</button>-->
       <button type="button" class="cancelbtn"onClick="window.location.href='HomePage.jsp'">Cancel</button>
        <!-- onSubmit="return validateForm(event);" <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button> 
      <button type="button" class="cancelbtn" onClick="window.location.href='HomePage.jsp'">Cancel</button>-->
      </div>
    </div>
    </div>
  </form>
</div>

</body>
</html>
<style>
* {box-sizing: border-box}
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

button:hover {
  opacity:1;
}
select{
width:100%;
padding: 15px;
margin: 5px 0 22px 0;
display: inline-block;
border: none;
background: #f1f1f1;

}


/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
  
}

/* Float cancel and signup buttons and add an equal width */
 .signupbtn {
  float: left;
  width: 50%;
}
.cancelbtn{
float: left;
  width: 100%;
  }

/* Add padding to container elements */
.container {
  padding: 16px;
  background-image: url("photo1.jpg");
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
 .signupbtn {
    width: 100%;
  }
}
</style>

 <script>
 var test = <%=request.getAttribute("post")%>;
 if(test == true)
 {
 dipAlert();
 }
 function dispAlert()
 {
  	alert("Sorry, Please enter valid details...");
 }
 function validate()
 { 
 	var providerId = document.getElementById("providerId").value;
 	if(providerId.trim() == "")
 	  {
 	  alert("Enter providerId");
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
 	var companyName = document.getElementById("companyName").value;
		if(companyName ==""){
			 alert("Please fill companyName");	
				    	 return false;
		             }
 	
 	var websiteAddress = document.getElementById("websiteAddress").value;
 	if(websiteAddress==""){
 		 alert("Enter your websiteAddress");	
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
 		 }
</script>


<!--<script>
function validateForm(event)
{
event.preventDefault(); // this will prevent the submit event.
if(document.form.providerId.value=="")
{
alert("Id can not be blank");
document.form.providerId.focus();
return false;
}
else if(document.form.name.value=="")
{
alert("Name can not be blank");
document.form.name.focus();
return false;
}
else if(document.form.password.value=="")
{
alert("Password can not be blank");
document.form.password.focus();
return false;
}
else if(document.form.companyName.value=="")
{
alert("CompanyName can not be blank");
document.form.companyName.focus();
return false;
}
else if(document.form.description.value=="")
{
alert("Description can not be blank");
document.form.description.focus();
return false;
}
else if(document.form.location.value=="")
{
alert("Location can not be blank");
document.form.location.focus();
return false;
}
else if(document.form.emailId.value=="")
{
alert("EmailId can not be blank");
document.form.emailId.focus();
return false;
}
else if(document.form.websiteAddress.value=="")
{
alert("WebsiteAddress can not be blank");
document.form.websiteAddress.focus();
return false;
}
else if(document.form.mobileNumber.value=="")
{
alert("MobileNumber can not be blank");
document.form.mobileNumber.focus();
return false;
}
else {
document.form.submit();// fire submit event
}
}
</script> -->