<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" href = "css/faqStyle.css">
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TechX</title>
</head>

<body>
<div class = "mainscreen">
<div class = "card">
<div class = "leftside">
<img src = "images/login.jpg">
</div>
<div class = "rightside">

<form action="login" method="post">
<h1>Login</h1>
          User name : <input  type="text" name="username" placeholder="User name" class = "inputbox" required=""><br><br>
          
          Password:<input  type="password" name="password" placeholder="Password" class = "inputbox" required=""><br><br>
          <div class="wthree-text">
            
            <div class="clear"> </div>
          </div>
          <input type="submit" value="Login" class = "button">
        </form>
        <form action = "registration.jsp">
        <input type="submit" value="Register" class = "button"><br><br>
        </form>
        </div>
        </div>
        </div>
        
       
</body>
</html>