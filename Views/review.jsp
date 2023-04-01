<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import = "java.sql.*" %>
<%Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reviews</title>
<link rel="stylesheet" href="css/faqStyle.css">
<link rel="stylesheet" href="css/hs.css">
</head>
<body>
<div class="header">
		
		<div class="logo_box"><img src="images/logo.png"></div>
		<div class="nav_bar">
			<center>
				<div class="search"><i class="fa fa-search" aria-hidden="true"></i><input type="text" name="search" id="search"></div>

				<a href="index.jsp">Home</a>
				<a href="review.jsp">Reviews</a>
				<a href="faq.jsp">FAQs</a>
				<a href="#">Products</a>		
                <a href="logout">Logout</a>
                <a href="UserProfile.jsp"><%=session.getAttribute("uname") %></a>

			</center>
		</div>
		<div class="user_cart">
			<center>
					<a href="#"><img src="images/shopping-cart .png"></a>
					<a href="UpdateUser.jsp"><img src="images/user.png"></a>
			</center>
		<div class="clrfix"></div>

	</div>
	<br><br><br><br>
	<% 
	String uname = (String)session.getAttribute("uname");//request the session variable
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "dharane123");//database connection
	    Statement st = con.createStatement();//create a prepared statement object
	    ResultSet rs = st.executeQuery("SELECT * FROM user WHERE uname= '"+uname+"'");//pass the name variable to the user table, select the relevant record and execute the query
	    %>
<div class="mainscreen">
      <div class="card">
        <div class="leftside">
          <img
            src="images/review.png"
            class="product"
            alt="Review"
          />
        </div>
        <div class="rightside">
          <form action="ReviewServlet" method="post">
            <h1>Reviews<h1>
            <h2>Place your reviews below</h2>
            <%while(rs.next()){ %>
            <p>User name</p>
            <input type="text" class="inputbox" name="name" value = <%=uname %> />
            <p>Email</p>
            <input type="email" class="inputbox" name="email" id="email" value = <%=rs.getString(5) %> />
            <p>Your review</p>
            <input type="text" class="inputbox" name="review" id="review" required />
            <p></p>
            <button type="submit" class="button">Submit</button>
            <%} %>
          </form>
        </div>
      </div>
    </div>
    
    <div class="footer">
        <div class="footer_sect_1">
            <div class="social">
                <center>
                    <a href="#"><img src="images/facebook.png"></a>
                    <a href="#"><img src="images/twitter.png"></a>
                    <a href="#"><img src="images/instagram.png"></a>
                </center>
            </div> 
            <h3>Company</h3>
            <ul>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Privacy Policy</a></li>
            </ul>
        </div>
    </div>
</body>
</html>