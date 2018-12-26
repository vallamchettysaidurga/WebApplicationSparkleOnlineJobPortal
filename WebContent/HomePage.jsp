<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sparkle Online Job Portal</title>
</head>
<body>
<header class="topnav">
<div id="header:">
  <img class="myImage" src="Logo.png"alt="pics" style="width:10%">
</div>
<marquee>Find the right job on Sparkle.com. You are only few steps away from millions of jobs</marquee>
<div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="SeekerRegister.jsp"  style="width:auto;">SignUp</a>
  <a href="SeekerLogin.jsp"  style="width:auto;">Login</a>
  <a href="postJob.jsp"  style="width:auto;">PostJob</a>
 <%--  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>  --%>
  <a href="HomePage.jsp" class="logout">&laquo;Logout</a>
  <!-- <input type="text" placeholder="Search..">  -->
</div><br><br>
</header>
<section>
  <img class="mySlides" src="Latest Jobs1.jpg" height="400px"
  style="width:100%">
  <img class="mySlides" src="latest job 2.jpg" height="400px"
  style="width:100%">
  <img class="mySlides" src="latest jobs 3.png" height="400px"
  style="width:100%">
  <img class="mySlides" src="latestjob 4.jpg" height="400px"
  style="width:100%">
</section>
<footer class="footer">

	<div class="topnavv">
		<br>
		<div class="topp">
		    <a href="AboutUs.jsp"  style="width:auto;">About</a >
		    <a href="#news">News</a>
			<a href="#contact">Contact us</a>
		</div>
		<br>
		<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		   <div class="topn">
			<a href="#"><i class="fa fa-facebook-official"></i></a> <a href="#"><i
				class="fa fa-pinterest-p"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-flickr"></i></a>
			<a href="#"><i class="fa fa-linkedin"></i></a> <br> <br>
		</div>
	</div>
	</footer>
	
	
</body>
</html> 
 
<style>   <%--CSS--%>
* {box-sizing: border-box;}
.body {
  font-family: Arial;
  margin: 0;
  }
<%-- Add a black background color to the top navigation--%>
.content {
margin-left:10px;
text_align: right;
}
.topnav {
  padding:1px;
  text-align: center;
  background: #FF6699;
  color: white;
  font-size: 20px;
 
 }
<%-- Style the links inside the navigation bar  #ff0080 #FFF5EE--%>
.topnav a {
    float: left;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    padding:10px;1111
    text-decoration: none;
    font-size: 20px;

}

<%-- Change the color of links on hover--%>
.topnav a:hover {
    background-color: #ddd;
    color: black;
}

<%--Add a color to the active/current link
.topnav a.active {
    background-color:   ;
    color: white;
} --%>
<%--Style the search box inside the navigation bar #ff0040 #00bfff --%>
.topnav input[type=text] {
    float: right;
    padding: 9px;
    border: none;
    margin-top: 8px;
    margin-right: 20px;
    font-size: 17px;
} 
.topn {
	text-align: center;
}

.topp {
	text-align: center;
}

.topnavv {
	overflow: hidden;
	width: 100%;
	background-color:#1abc9c;
}

.topnavv a {
	vertical-align: center;
	color: black;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnavv a:hover {
	background-color: #ddd;
	color: black;
}
/* Style all font awesome icons */
.fa {
  padding: 20px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
  border-radius: 50%;
}

/* Add a hover effect if you want*/
.fa:hover {
  opacity: 0.9;
} 

/* Set a specific color for each brand */

/* Facebook */
.fa-facebook {
  background: #3B5998;
  color: white;
}

/* Twitter */
.fa-twitter {
  background: #55ACEE;
  color: white;
} 

</style>

<script>     <%--JAVA SCRIPT--%>
/* Automatic Slideshow - change image every 3 seconds */
var myIndex = 0;
carousel();    
var test = <%=request.getAttribute("hmpg")%>;
if(test == true)
{
dipAlert();
}

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 3000);
}

function dispAlert()
{
 	alert("Registered Successfully");
}
</script>
