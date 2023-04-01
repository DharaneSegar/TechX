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
 * Servlet implementation class deleteServlet
 */
@WebServlet("/delReviewServlet")
public class delReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
	    Connection con=null;
	    try {

	    	String id=request.getParameter("id");//retrieving the id of the inquiry from updateReview.jsp
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "dharane123");//database connection
	        Statement st = con.createStatement();//connect the prepared statement object
	        st.executeUpdate("DELETE FROM review WHERE id = '"+id+"'");//pass the id variable to the review table and delete the relevant record
	        response.sendRedirect("showAll.jsp");//upon successful deletion, redirect to showAll.jsp
	        
	    } catch (SQLException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	}

}
