package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductDelServlet
 */
@WebServlet("/ProductDelServlet")
public class ProductDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
	    Connection con=null;
	    try {

	    	String id=request.getParameter("id");//retrieving the id of the inquiry from updateInquiry.jsp
	    	Class.forName("com.mysql.jdbc.Driver");//load the driver to the memory
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "dharane123");//database connection
	        Statement st = con.createStatement();//connect the prepared statement object
	        st.executeUpdate("DELETE FROM product WHERE id = '"+id+"'");//pass the id variable to the product table and delete the relevant record
	        System.out.println("Product deleted");
	        response.sendRedirect("allProducts.jsp");//upon successful deletion, redirect to allProducts.jsp
	        
	    } catch (ClassNotFoundException | SQLException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	}

}
