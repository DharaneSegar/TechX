package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.MyDb;
import Model.reviewBean;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("name");
		System.out.println("Username passed" );

		String uemail = request.getParameter("email"); 		
		System.out.println("Email passed" );
		
		String review = request.getParameter("review"); 
		System.out.println("review passed" );
		//retrieving the user entered values from the review form
		
		MyDb db = new MyDb();//create a database connection object
		Connection con = db.getCon();//connect the database object
		reviewBean user = new reviewBean(uname,uemail,review);//create object of reviewBean
		
		String sql = "insert into review (uname,email,review) values (?,?,?)";//insert values to the review table
		PreparedStatement pst;//create a prepared statement object
		try{
			pst = con.prepareStatement(sql);//connect the prepared statement object
			
			//assigning the values fetched from the getter methods
			pst.setString(1, user.getUname());
			pst.setString(2, user.getEmail());
			pst.setString(3, user.getReview());		
			
			int rs = pst.executeUpdate();//execute the query and store the value to the integer variable rs
			
			//if rs is positive then,query is executed successfully else,unsuccessful execution
			if(rs > 0){
				System.out.println("Submitted successfully!");
				response.sendRedirect("index.jsp");//upon successful execution, redirect to index.jsp
			}
			
			else{
				System.out.println("Unsuccess!");
				response.sendRedirect("review.jsp");//upon unsuccessful execution, redirect to faq.jsp to resubmit
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	

}
