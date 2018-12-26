<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "com.mvc.controller.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>			
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<style>
/* Bordered form */
form {
    border: 3px  #f1f1f1;
    
}

/* Full-width inputs*/
input[type=text], input[type=password] {
   width: 50%;
  padding: 15px;
    margin: 5px 0px 22px 26% ;
    display: block;
    border : 1px solid #ccc;
    box-sizing: border-box;
     border-radius:10px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    border: none;
    cursor: pointer;
    width: 10%;
    text-align: center;
           margin: 5px 0px 22px 46% ;
    
}

/* Add a hover effect for buttons */
button:hover {
    opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
    width: 10%;
    padding: 10px 18px;
    background-color: #f44336;
    text-align: center;
           margin: 5px 0px 22px 46% ;

    
}

/* Center the avatar image inside this container */
.imgcontainer {
    text-align: center;
    margin: 12px 0 12px 0;
}

/* Avatar image */
img.avatar {
    width: 20%;
    border-radius: 50%;
}

/* Add padding to containers */
.container {
    padding: 16px;
}

/* The "Forgot password" text */
span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
        display: block;
        float: none;
   
    }
    .cancelbtn {
        width: 100%;
             }
}

</style>
</head>
<body>
	<form  name="form" action="LoginServlet" method="post" onsubmit="return validate()">
  <div class="imgcontainer">
    <img src="download.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="name"></label>
    <input type="text" placeholder="Enter Username" Id="name" name="name" ><br>

    <label for="psw"></label>
    <input type="password" placeholder="Enter Password" Id="password" name="password"><br>
</div>
<div class="container" style="background-color:#f1f1f1">
  <button type="submit">Login</button>
    <button type="button" class="cancelbtn" onClick="window.location.href='HomePage.jsp'">Cancel</button>
    <p> If You Are a New User,<a href="SeekerRegister.jsp">Click Here</a>
  </div>
</form>
</body>
</html>	
<script>
function validate()
{
var name = document.getElementById("name").value;
if(name==""){
	 alert("Please enter username");	
		    	 return false;
          }
var password = document.getElementById("password").value;
if(password ==""){
	 alert("Please enter password");	
		    	 return false;
             }
}
var test = <%=request.getAttribute("sgn")%>;
if(test == false)
{
dipAlert();
}
function dispAlert()
{
 	alert("Not Successfully Loggedin Try Again");
}
          
</script>