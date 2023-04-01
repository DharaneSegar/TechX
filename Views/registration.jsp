<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/main.js"></script>


<link rel = "stylesheet" href = "css/faqStyle.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TechX</title>
</head>
<body>


<div class = "mainscreen">
<div class = "card">
<div class = "leftside">
<img src = "images/Signup.jpg">
</div>
<div class = "rightside">

<form action="register" method="post" onsubmit="return checkPassword()">
<h1>Sign Up</h1>

          User name : <input  type="text" name="name" placeholder="User name" class = "inputbox" required><br><br>
          First name : <input  type="text" name="f_name" placeholder="First name" class = "inputbox" required><br><br>
          Last name : <input  type="text" name="l_name" placeholder="Last name" class = "inputbox" required><br><br>
          E-mail:<input  type="email" name="email" placeholder="Email" class = "inputbox" required><br><br>
          Password:<input  type="password" name="pass" placeholder="Password" id = "password" class = "inputbox" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,10}"required><br><br>
          Re-enter password:<input  type="password" name="re_pass" placeholder="Confirm Password" id = "re_password" class = "inputbox" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,10}"required><br><br>
          Mobile Number:<input type="text" name="contact" placeholder="Contact" class = "inputbox"required pattern="[0-9]{10}"><br><br>
          <div class="wthree-text">
            
            <div class="clear"> </div>
          </div>
          <input type="submit" value="Register" class = "button"><br><br>
        </form>
        <form action = "login.jsp">
        <input type="submit" value="Already have an account?" class = "button"><br><br>
        </form>
        </div>
        </div>
        </div>


   
</body>
</html>