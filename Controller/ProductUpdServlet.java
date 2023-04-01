package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductUpdServlet
 */
@WebServlet("/ProductUpdServlet")
public class ProductUpdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.io.PrintWriter out = response.getWriter( );
		
		//retrieving the admin entered values from the updateProduct form	
		String id = request.getParameter("id");
		String name=request.getParameter("name");
		String price=request.getParameter("price");
		String description=request.getParameter("description");
		Connection con = null;
		PreparedStatement ps = null;
		try
		{
		Class.forName("com.mysql.jdbc.Driver"); //load the driver to the memory
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "dharane123"); //database connection
		String sql="Update product set id=?, name=?, price=?, description=? where id="+id; //pass the id variable to the product table and update the relevant record
		ps = con.prepareStatement(sql); //connect the prepared statement object
		
		//assigning the values fetched from the getter methods
		ps.setString(1,id);
		ps.setString(2,name);
		ps.setString(3,price);
		ps.setString(4,description);
		
		int i = ps.executeUpdate(); //execute the query and store the value to the integer variable i
		
		//if i is positive then,query is executed successfully else,unsuccessful execution
		if(i > 0)
		{
		System.out.print("Record Updated Successfully");
		response.sendRedirect("allProducts.jsp"); //upon successful execution, redirect to allproducts.jsp
		
		}
		else
		{
		System.out.print("Error occured during updating Record.");//upon unsuccessful execution, print message
		} 
		
		}
		catch(SQLException | ClassNotFoundException e)
		{
		request.setAttribute("error", e);
		out.println(e);
		
		}
		}
	}
