<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<link rel="stylesheet" href="css/faqStyle.css">
<link rel="stylesheet" href="css/hs.css">
<link rel="stylesheet" href="css/productview.css">
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
					<a href="#"><img src="images/shopping-cart .png"></a>
					<a href="UpdateUser.jsp"><img src="images/user.png"></a>
			</center>
		<div class="clrfix"></div>

	</div>
	<br><br>
<div class="mainscreen">
    <!-- <img src="https://image.freepik.com/free-vector/purple-background-with-neon-frame_52683-34124.jpg"  class="bgimg " alt="">--> 
     
<div class= "main">
  


<div class="card">

<div class="image">
   <img src="images/blender.jpg">
</div>
<div class="title">
 <h1>
Blender</h1>
</div>
<div class="des">
 <p>LKR 10000.00</p>
<button>Buy item</button>
</div>
</div>
<!--cards -->

   
<div class="card">

<div class="image">
   <img src="images/heater.jpg">
</div>
<div class="title">
 <h1>
Heater</h1>
</div>
<div class="des">
 <p>LKR 70000.00</p>
<button>Buy item.</button>
</div>
</div>
<!--cards -->

<div class="card">

<div class="image">
   <img src="images/induction stove.jpg">
</div>
<div class="title">
 <h1>
Induction stove</h1>
</div>
<div class="des">
 <p>LKR 20000.00</p>
<button>Buy item</button>
</div>
</div>
<!--cards -->

<div class="card">

<div class="image">
   <img src="images/ekettle.jpg">
</div>
<div class="title">
 <h1>
Kettle</h1>
</div>
<div class="des">
 <p>LKR 15000.00</p>
<button>Buy item</button>
</div>
</div>
<!--cards -->


<div class="card">

<div class="image">
   <img src="images/eiron.jpg">
</div>
<div class="title">
 <h1>
Iron</h1>
</div>
<div class="des">
 <p>LKR 8000.00</p>
<button>Buy item</button>
</div>
</div>
<!--cards -->

<div class="card">

<div class="image">
   <img src="images/oven.jpg">
</div>
<div class="title">
 <h1>
Microwave oven</h1>
</div>
<div class="des">
 <p>LKR 45000.00</p>
<button>Buy item</button>
</div>
</div>
<!--cards -->


<div class="card">

<div class="image">
   <img src="images/toaster.jpg">
</div>
<div class="title">
 <h1>
Toaster</h1>
</div>
<div class="des">
 <p>LKR 35000.00</p>
<button>Buy item</button>
</div>
</div>
<!--cards -->

<div class="card">

<div class="image">
   <img src="images/speaker.jpg">
</div>
<div class="title">
 <h1>
Speaker </h1>
</div>
<div class="des">
 <p>LKR 60000.00</p>
<button>Buy item</button>
</div>
</div>
<!--cards -->
    
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