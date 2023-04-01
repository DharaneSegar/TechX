<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import = "java.sql.*" %>
<%Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FAQs</title>
<link rel="stylesheet" href="css/faqStyle.css">
<link rel="stylesheet" href="css/hs.css">
<link rel="stylesheet" href="css/Quescss.css">

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
				<a href="productview.jsp">Products</a>		
                <a href="logout">Logout</a>
                <a href="UserProfile.jsp"><%=session.getAttribute("uname") %></a>

			</center>
		</div>
		<div class="user_cart">
			<center>
					<a href=""><img src="images/shopping-cart .png"></a>
					<a href="UpdateUser.jsp"><img src="images/user.png"></a>
			</center>
		<div class="clrfix"></div>

	</div>
	<br><br>
		<% 
	    String uname = (String)session.getAttribute("uname"); //request the session variable and assign to uname
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "dharane123"); //database connection
	    Statement st = con.createStatement();
	    ResultSet rs = st.executeQuery("SELECT * FROM user WHERE uname= '"+uname+"'");//pass the name variable to the user table, select the relevant record and execute the query
	    %>
<div class="mainscreen">
<br><br><br><br>
      <div class="card">
      
        <div class="leftside">
          <img
            src="images/ContactUs.jpg"
            class="product"
            alt="contactUs"
          />
        </div>
        <div class="rightside">
          <form action="faqServlet" method="post">
            <h1>Contact Us</h1>
            <BR>
            <h2>Type your inquiries below</h2>
            <%while(rs.next()){ %>
            <p>User name</p>
            <input type="text" class="inputbox" name="name" value = <%=uname %> />
            <p>Email</p>
            <input type="email" class="inputbox" name="email" id="email" value = <%=rs.getString(5) %> />
            <p>Your inquiry</p>
            <input type="text" class="inputbox" name="inquiry" id="inquiry" required />
            <%} %>
            <p></p>
            <button type="submit" class="button">Submit</button>
          </form>
        </div>
        
        
      </div>
      <br><br><br><br>
      <section class="sec">
	<h3 class="title">Frequently asked questions</h3>
	<div class="questions-container">
		<div class="question">
			<button>
				<span>Get in touch for more details</span> <i
					class="fas fa-chevron-down d-arrow"></i>
			</button>
			<p>In order to ensure that you have the ultimate Tech X
				shopping experience, our list of Frequently Asked Questions is
				compiled with you in mind! If you have any queries that are not
				answered here, please drop us an e-mail on customercare@Techx.lk.
				We will respond as soon as possible.</p>
		</div>
		

		<div class="question">
			<button>
				<span>1.How do I make a purchase?</span> <i
					class="fas fa-chevron-down d-arrow"></i>
			</button>
			<p>To make a purchase, click the Order button and proceed with
				further directions given by the website.</p>
		</div>
		

		<div class="question">
			<button>
				<span>2.What payment methods does Tech X accept?</span> <i
					class="fas fa-chevron-down d-arrow"></i>
			</button>
			<p>Cash On Delivery (COD) is available Island-wide. Or you can
				visit our website and use your Debit or Credit Card.</p>
		</div>
		

		<div class="question">
			<button>
				<span>3.What will be my delivery cost?</span> <i
					class="fas fa-chevron-down d-arrow"></i>
			</button>
			<p>If the delivery location is within Colombo - delivery cost of
				Rs.600/- added to the total order value. If the delivery location is
				out of Colombo - delivery cost of Rs.800/- added to the total order
				value.</p>
		</div>
		

		<div class="question">
			<button>
				<span>4.An Item I want to buy is sold out will you be
					restocking it?</span> <i class="fas fa-chevron-down d-arrow"></i>
			</button>
			<p>Restocking our styles depends on its demand. If the style is
				frequently asked about, we will be restocking it within a few weeks.
				If not, you can pick a similar style.</p>
		</div>
		

		<div class="question">
			<button>
				<span>5.What is the return notice period?</span> <i
					class="fas fa-chevron-down d-arrow"></i>
			</button>
			<p>You will not be eligible to exchange after 5 days of any of
				your purchases. All the products must be in its original condition
				with our tags to do an exchange. Please read our exchange policy for
				more info.</p>
		</div>
		

		<div class="question">
			<button>
				<span>6.Your order did not arrive?</span> <i
					class="fas fa-chevron-down d-arrow"></i>
			</button>
			<p>Every standard order will take 6-8 working days to be
				delivered. If your order has not arrived, please contact us
				immediately by phone or e-mail.</p>
		</div>
		

		<div class="question">
			<button>
				<span>7.Can I add multiple addresses?</span> <i
					class="fas fa-chevron-down d-arrow"></i>
			</button>
			<p>Delivery will be made only to the address stated on the order.
				Due to unavoidable circumstances, if you need to change the address,
				please write an email to us or contact us through phone. Shipping
				delays may occur for delivery amendments.</p>
		</div>
		

		<div class="question">
			<button>
				<span>8.Is it safe to use my credit/debit card online at
					Tech X?</span> <i class="fas fa-chevron-down d-arrow"></i>
			</button>
			<p>Yes. We use the most trusted payment gateways in Sri Lanka
				which are equipped with the latest security features and standards.</p>
		</div>
		

		<div class="question">
			<button>
				<span>9.How secure is my personal information?</span> <i
					class="fas fa-chevron-down d-arrow"></i>
			</button>
			<p>All personal information is kept private, running on the most
				secure e-commerce platforms.</p>
		</div>
		

		<div class="question">
			<button>
				<span>10.Can I change or amend my order once it has been
					placed?</span> <i class="fas fa-chevron-down d-arrow"></i>
			</button>
			<p>Once an order is placed you will not be able to change or
				amend the order.</p>
		</div>
		
	</div>
	</section>
	<br><br><br><br>
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
    <script src="js/quesJS.js"></script>
</body>
</html>