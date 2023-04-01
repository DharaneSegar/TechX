<%
if (session.getAttribute("uname") == null){
	response.sendRedirect("registration.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" href="css/hs.css" type="text/css">
    <link rel="stylesheet" href="css/Home.css" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="js/slider.js"></script>
<title>Home</title>
</head>
<body>
<!-- Header-start -->

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
<!-- Header - End -->

<!-- slider start -->

<div class="sliderbox">
		

    <img src="" id="slider">
</div>


<!-- slider end -->


<!-- item-box-start -->

<div class = "products">
    <!-- box-1 -->
<div class="item-box" style="background-image: url(images/item_img-1.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>TOSHIBA 32 inch LED TV</p>
        <p class="price">Rs.69,999</p>
    </div>

</div>

<!-- box-2 -->
<div class="item-box" style="background-image: url(images/item_img-2.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>WESTINGHOUSE Retro Hand Mixer</p>
        <p class="price">Rs.10,990</p>
    </div>

</div>

<!-- box-3 -->
<div class="item-box" style="background-image: url(images/item_img-3.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>WESTINGHOUSE Slice Pop-Up Toaster</p>
        <p class="price">Rs.8,990</p>
    </div>

</div>

<!-- box-4 -->
<div class="item-box" style="background-image: url(images/item_img-4.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>JVC Sound Bar - TH-N536B</p>
        <p class="price">Rs.25,990</p>
    </div>

</div>

<!-- box-5 -->
<div class="item-box" style="background-image: url(images/item_img-5.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>WHIRLPOOL 355L Refrigerator </p>
        <p class="price">Rs.299,990</p>
    </div>

</div>

<!-- box-6 -->
<div class="item-box" style="background-image: url(images/item_img-6.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>HP ProBook 440 G8 Intel Core i5 - 14 Inch</p>
        <p class="price">Rs.409,990</p>
    </div>

</div>

<!-- box-7 -->
<div class="item-box" style="background-image: url(images/item_img-7.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>Acer 15.6" Intel Core i3 11Th Gen 4GB </p>
        <p class="price">Rs.178,990</p>
    </div>

</div>

<!-- box-8 -->
<div class="item-box" style="background-image: url(images/item_img-8.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>Acer Intel 11th Gen i5 1135G7 </p>
        <p class="price">Rs.269,990</p>
    </div>

</div>

<!-- box-9 -->
<div class="item-box" style="background-image: url(images/item_img-9.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>Abans 18000BTU R32 Air Conditioner </p>
        <p class="price">Rs.289,990</p>
    </div>

</div>

<!-- box-10 -->
<div class="item-box" style="background-image: url(images/item_img-10.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>JBL Tune 500 Headphones - Blue </p>
        <p class="price">Rs.11,499</p>
    </div>

</div>

<!-- box-11 -->
<div class="item-box" style="background-image: url(images/item_img-11.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>ABANS Dry Iron - Blue </p>
        <p class="price">Rs.4,990</p>
    </div>

</div>

<!-- box-12 -->
<div class="item-box" style="background-image: url(images/item_img-12.jpg);">

    <div class="item-box-overlay">



        <center><button class="item-view-button">View Item</button></center>
        

    </div>
    <div class="item-box-disc"><p>ABANS Hand Mixer</p>
        <p class="price">Rs.7,990</p>
    </div>

</div>
</div>

<!-- Footer - Start -->

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
        
        
 <!-- Footer - End -->
    
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    </div>
    
