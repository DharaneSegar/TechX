<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All User Details</title>

<link rel="stylesheet" href="css/hs.css">


</head>
<body>
<div class = "mainscreen">


	<div class="header">
	
		
		<div class="logo_box"><img src="images/logo1.png"></div>
		

		<div class="nav_bar">
		<center>
		
				<div class="search"><i class="fa fa-search" aria-hidden="true"></i><input type="text" name="search" id="search"></div>

				<a href="index.jsp">Home</a>
				<a href="#">Reviews</a>
				<a href="#">FAQs</a>
				<a href="#">Products</a>		
                <a href="logout">Logout</a>
                <a href="UpdateUser.jsp"><%=session.getAttribute("uname") %></a>

			</center>


		</div>

		<div class="user_cart">
			
					<a href="#"><img src="images/shopping-cart .png"></a>
					<a href="login.jsp"><img src="images/user.png"></a>
			

		
		<div class="clrfix"></div>

	</div>
	</div>
	<br><br>

<form method="post" name="form">
<table border="1" width = "100%">
<tr><th>User Id</th><th>User Name</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Password</th><th>Mobile</th></tr>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "techx";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="dharane123";

int sumcount=0;
Statement st;
try{
Class.forName(driver).newInstance();//load the driver to the memory
con = DriverManager.getConnection(url+db,userName,password);//database connection
String query = "select * from user";//select all records from user table
st = con.createStatement();//connect the prepared statement object
ResultSet rs = st.executeQuery(query);//execute the query and store the value to the integer variable rs
%>

<%
while(rs.next()){
%>
<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>

</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
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