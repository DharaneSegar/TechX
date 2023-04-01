package Controller;
import Model.User;
import DBConnection.MyDb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/register")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,NumberFormatException {
		// TODO Auto-generated method stub
		
		String uname = request.getParameter("name");
		System.out.println("Username passed" );
		
		String fname = request.getParameter("f_name");
		System.out.println("Firstname passed" );
		
		String lname = request.getParameter("l_name");
		System.out.println("Lastname passed" );
		
		String uemail = request.getParameter("email"); 
		System.out.println("Email passed" );
		
		String upwd = request.getParameter("pass");
		System.out.println("Password passed" );
		
		String repwd = request.getParameter("re_pass");
		System.out.println("Re password passed");
		
		String umobile = request.getParameter("contact");
		System.out.println("Contact passed" );
		
		//retrieving the user entered values from the update registration form
		
		if(!(upwd.equals(repwd))){//password validation
			response.sendRedirect("registration.jsp");
			System.out.println("Password mismatch");
		}
		
		else{
		
		MyDb db = new MyDb();//create a database connection object
		Connection con = db.getCon();//connect the database object
		User user = new User(uname,fname,lname,uemail, upwd,umobile);//create object of User
		
		
		String sql = "insert into user (uname,fname,lname,uemail,upwd,umobile) values (?,?,?,?,?,?)";//insert values to the user table
		PreparedStatement pst;//create a prepared statement object
		try{
			pst = con.prepareStatement(sql);//connect the prepared statement object
			
			//assigning the values fetched from the getter methods.
			pst.setString(1, user.getUname());
			pst.setString(2, user.getFname());
			pst.setString(3, user.getLname());
			pst.setString(4, user.getUemail());
			pst.setString(5, user.getUpwd());		
			pst.setString(6,user.getUmobile());
			
			int rs = pst.executeUpdate();//execute the query and store the value to the integer variable rs
			
			//if rs is positive then,query is executed successfully else,unsuccessful execution
			if(rs > 0){
				System.out.println("Registered successfully!");
				response.sendRedirect("login.jsp");//upon successful execution, redirect to login.jsp
			}
			
			else{
				System.out.println("Unsuccess!");
				response.sendRedirect("registration.jsp");//upon unsuccessful execution, redirect to registration.jsp to resubmit
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	}
}
		
		
		
		
		
        


