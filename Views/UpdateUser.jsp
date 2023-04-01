<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import = "java.sql.*" %>
<%Class.forName("com.mysql.jdbc.Driver"); //load the driver to the memory%>
<html>
<head>

<link rel = "stylesheet" href = "css/faqStyle.css">
<link rel = "stylesheet" href = "css/hs.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Details</title>
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
	<% 
	    //catch data
	    String uname = (String)session.getAttribute("uname");//request the session variable
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "dharane123");//database connection
	    Statement st = con.createStatement();//connect the prepared statement object
	    Statement st1 = con.createStatement();//connect the prepared statement object
	    ResultSet rs = st.executeQuery("SELECT * FROM user WHERE uname= '"+uname+"'");//pass the name variable to the user table, select the relevant record and execute the query
	    ResultSet rt = st1.executeQuery("SELECT id FROM user WHERE uname= '"+uname+"'");//pass the name variable to the user table, select the relevant id and execute the query
	
	%>

<div class = "mainscreen">
<br><br><br><br>
<div class = "card">
<div class = "leftside">
<img src = "images/Signup.jpg">

</div>

<div class = "rightside">

<form action="update" method="post">
<h1>Update Details</h1>

<%while(rs.next()){ %>
          <input type="hidden" name="id" value="<%=rs.getString(1) %>">
          User name : <input  type="text" name="name" placeholder="User name" class = "inputbox" value = <%=uname %>><br><br>
          First name : <input  type="text" name="f_name" placeholder="First name" class = "inputbox" required="" value = <%=rs.getString(3) %>><br><br>
          Last name : <input  type="text" name="l_name" placeholder="Last name" class = "inputbox" required="" value = <%=rs.getString(4) %>><br><br>
          E-mail:<input  type="email" name="email" placeholder="Email" class = "inputbox" required value = <%=rs.getString(5) %>><br><br>
          Password:<input  type="password" name="pass" placeholder="Password" class = "inputbox"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,10}" required value = <%=rs.getString(6) %>><br><br>
          Re-enter password:<input  type="password" name="re_pass" placeholder="Confirm Password" class = "inputbox" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,10}"required value = <%=rs.getString(6) %>><br><br>
          Mobile Number:<input type="text" name="contact" placeholder="Contact" class = "inputbox" pattern="[0-9]{10}" required value = <%=rs.getString(7) %>><br><br>
          <%} %>
          <div class="wthree-text">
            
            <div class="clear"> </div>
          </div>
          <input type="submit" value="Update" class = "button"><br><br>
        </form>
        
        
        <form action="delete" method = "post">
        <%while(rt.next()){ %>
        <input type="hidden" name="id" value="<%=rt.getString(1) %>">
        <%} %>
        
        <input type="submit" value="Delete" class = "button"><br><br>
        
        
        </form>
        </div>
        </div>
        <br><br><br><br>
        </div>  
</body>
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