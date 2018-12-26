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
<title>Accenture</title>
</head>
<body>
<header class="topnav">
  <img class="myImage" src="Logo.png"alt="pics" style="width:10%">
</div>
<marquee>Find the right job on Sparkle.com. You are only few steps away from millions of jobs</marquee>
</header><br>
<a href="jobsPage.jsp" class="previous">&laquo; Back</a>
<a href="HomePage.jsp" class="previous">&laquo; Home</a><br><br>
 
<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="webproject" password="sree" />
      
<sql:query dataSource="${snapshot}" var="result">  
	  Select jobId,jobRole,categeory,jobType,jobLocation from jobDetails where jobId = 101
</sql:query>    
  
<table border="1" width="100%">
<tr>
<th>jobId</th>
<th>jobRole</th>
<th>categeory</th>
<th>jobType</th>
<th>jobLocation</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.jobId}"/></td>
<td><c:out value="${row.jobRole}"/></td>
<td><c:out value="${row.categeory}"/></td>
<td><c:out value="${row.jobType}"/></td>
<td><c:out value="${row.jobLocation}"/></td>
</c:forEach>
<br><br>
</table><br><br>
<center><a href="job2.jsp" class="next">&laquo;View and Apply</a></center><br><br>

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
 background: #e0ffff;
  }
<%-- Add a black background color to the top navigation  #ff0080--%>
.content 
{
margin-left:10px;
text_align: right;
}
.topnav 
{
  padding:1px;
  text-align: center;
  background: #FF6699 ;
  color: white;
  font-size: 20px;
 
 }
 a {
    text-decoration: none;
    display: inline-block;
    padding: 8px 16px;
}

a:hover {
    background-color: #ddd;
    color: black;
}


.previous {
    background-color:orange;
    color: black;
}

.next {
    background-color:lightblue;
    color: white;
}
table{
border-collapse:collapse;
font-size:20px;

}
td{
height:40px;
font-size:20px;

}
tr{

background-color:#FFB6C1;
color:white;
font-size:20px;
}
th 
{
background-color:#FFB6C1;
color:black;
font-size:20px;
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