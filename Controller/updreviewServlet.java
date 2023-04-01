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
 * Servlet implementation class updateServlet
 */
@WebServlet("/updateServlet")
public class updreviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.io.PrintWriter out = response.getWriter( );
		
		//retrieving the user entered values from the updateReviews form
		String id=request.getParameter("id");
		String acknowledgement=request.getParameter("acknowledgement");
		if(id!=null)
		{
		Connection con = null;
		PreparedStatement ps = null;
		try
		{
		Class.forName("com.mysql.jdbc.Driver"); //load the driver to the memory
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "dharane123"); //database connection
		String sql="Update review set acknowledgement=? where id="+id;  //pass the id variable to the review table and update the relevant record
		ps = con.prepareStatement(sql); //connect the prepared statement object
		
		//assigning the values fetched
		ps.setString(1,acknowledgement);
		
		
		int i = ps.executeUpdate(); //execute the query and store the value to the integer variable i
		
		//if i is positive then,query is executed successfully else,unsuccessful execution
		if(i > 0)
		{
		System.out.print("Record Updated Successfully");
		response.sendRedirect("showAll.jsp");  //upon successful execution, redirect to showAllMsg.jsp
		}
		else
		{
		System.out.print("There is a problem in updating Record.");
		response.sendRedirect("showAll.jsp");
		} 
		}
		catch(SQLException | ClassNotFoundException e)
		{
		request.setAttribute("error", e);
		out.println(e);
		
		}
		}
	}

}
