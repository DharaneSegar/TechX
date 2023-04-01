package Controller;
import java.sql.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,NullPointerException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");//retrieve the hidden id field and assign it to the id variable
		
		HttpSession session = request.getSession();//request the session variable
		String uname = (String)session.getAttribute("uname");//assign the session variable value to the uname 
		System.out.println("Username passed" );
		
		String fname = request.getParameter("f_name");
		System.out.println("Firstname passed" );
		
		String lname = request.getParameter("l_name");
		System.out.println("Lastname passed" );
		
		String uemail = request.getParameter("email");
		System.out.println("Email passed" );
		
		String upwd = request.getParameter("pass");
		System.out.println("Password passed" );
		
		String umobile = request.getParameter("contact");
		System.out.println("User mobile passed" );
		
		//retrieving the user entered values from the update user details form
		
        try {
        	
            Connection con = null;
            PreparedStatement pst = null;
            Class.forName("com.mysql.cj.jdbc.Driver");//load the driver to the memory
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "dharane123");//database connection
			String sql = "UPDATE user SET fname = ?,lname = ?,uemail = ?,upwd = ? ,umobile = ? WHERE id= '"+id+"'";//pass the id variable to the user table and update the relevant record
			pst = con.prepareStatement(sql);//connect the prepared statement object
			
			//assigning the values fetched from the getter methods
			pst.setString(1, fname);
            pst.setString(2, lname);
            pst.setString(3, uemail);
			pst.setString(4, upwd);
			pst.setString(5, umobile);
			
			int i = pst.executeUpdate();//execute the query and store the value to the integer variable i 
			
			//if i is positive then,query is executed successfully else,unsuccessful execution
			if(i > 0){
				System.out.println("Your Changes have been Saved !");
                response.sendRedirect("index.jsp");//upon successful execution, redirect to index.jsp
				
			}
			
			else{
				System.out.println("Your Changes have not been Saved !");
                response.sendRedirect("UpdateUser.jsp");//upon unsuccessful execution, redirect to UpdateUser.jsp to resubmit
			}
	

        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (ClassNotFoundException  | IllegalStateException e1) {
            System.out.println(e1);
        }
	}
	}


