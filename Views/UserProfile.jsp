<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import ="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Profile</title>

<link rel="stylesheet" href="css/hs.css">

<style>
th, td {
  padding-top: 10px;
  padding-bottom: 20px;
  padding-left: 30px;
  padding-right: 40px;
  width:50%;
}
th{
font-size:23px;
}

td{
font-size:20px;
}

table, th, td {
  align:center;
  border: 3px solid white;
  
  
}
body{
background-image:url("images/b6.png");
background-repeat: no-repeat;
}
</style>
</head>
<body>
<div class = "mainscreen">


	<div class="header">
	
		
		<div class="logo_box"><img src="images/logo.png"></div>
		

		<div class="nav_bar">
		<center>
		
				<div class="search"><i class="fa fa-search" aria-hidden="true"></i><input type="text" name="search" id="search"></div>

				<a href="index.jsp">Home</a>
				<a href="review.jsp">Reviews</a>
				<a href="faq.jsp">FAQs</a>
				<a href="productview.jsp">Products</a>		
                <a href="logout">Logout</a>
                <a href="UserProfile.jsp"><%=session.getAttribute("uname") %></a>

			</center>


		</div>

		<div class="user_cart">
			
					<a href="#"><img src="images/shopping-cart .png"></a>
					<a href="UpdateUser.jsp"><img src="images/user.png"></a>
			

		
		<div class="clrfix"></div>

	</div>
	</div>
	<br><br>

<form method="post" name="form">
<h1 align="center"> My FAQs</h1>
<table border="1" width = "100%" >
<tr><th>Inquiry</th><th>Reply</th></tr>
<%

String uname = (String)session.getAttribute("uname");//request the session variable
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "dharane123");//database connection
Statement st = con.createStatement();//create a prepared statement object
ResultSet rs = st.executeQuery("SELECT inquiry,reply FROM questionnaire WHERE uname= '"+uname+"'");//pass the name variable to the questionnaire table, select the relevant record and execute the query
%>

<%
while(rs.next()){
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
</tr>
<%} %>
</table>

<br><br>

<h1 align="center"> My Reviews</h1>
<table border="1" width = "100%" >
<tr><th>Review</th><th>Acknowledgement</th></tr>
<%
Statement st1 = con.createStatement();//create a prepared statement object
ResultSet rs1 = st1.executeQuery("SELECT review,acknowledgement FROM review WHERE uname= '"+uname+"'");//pass the name variable to the review table, select the relevant record and execute the query
%>

<%
while(rs1.next()){
%>
<tr>
<td><%=rs1.getString(1)%></td>
<td><%=rs1.getString(2)%></td>
</tr>
<%} %>
</table>
</form>
</div>
</body>
<br><br>
    <div class="footer">

	
        <div class="footer_sect_1">
            <div class="social">
                
                    <a href="#"><img src="images/facebook.png"></a>
                    <a href="#"><img src="images/twitter.png"></a>
                    <a href="#"><img src="images/instagram.png"></a>
                
            </div> 
            
            
            <h3>Company</h3>
            
            <ul>
    
                <li><a href="#">About Us</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Privacy Policy</a></li>
    
    
            </ul>
        
            
        </div>
            
    </div>
</html>