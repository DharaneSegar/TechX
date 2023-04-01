package Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adminUpdateServlet
 */
@WebServlet("/adminUpdateServlet")
public class adminUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();//request the session variable
		String uname = (String)session.getAttribute("uname");//assign the session variable value to the uname 
		String fname = request.getParameter("f_name");
		String lname = request.getParameter("l_name");
		String email = request.getParameter("email");
		String apwd = request.getParameter("pass");
		String contact = request.getParameter("contact");
		String address=request.getParameter("address");
		String qualification=request.getParameter("qualification");
        
		//retrieving the admin entered values from the update user details form
		
		PrintWriter out = response.getWriter();
		
		
        try {
            Connection con = null;
            Class.forName("com.mysql.cj.jdbc.Driver");//load the driver to the memory
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "dharane123");//database connection
            
                PreparedStatement pst =con.prepareStatement("UPDATE admin SET fname = ?,lname = ?,email = ?,apwd = ? ,contact = ? ,address = ? ,qualification = ? WHERE uname= '"+uname+"'");//pass the uname variable to the adin table and update the relevant record
                
              //assigning the values fetched from the getter methods
                pst.setString(1, fname);
                pst.setString(2, lname);
                pst.setString(3, email);
    			pst.setString(4, apwd);
    			pst.setString(5, contact);
    			pst.setString(6, address);
    			pst.setString(7, qualification);
                pst.executeUpdate();//execute the query 
                System.out.println("Your Changes have been Saved !");
                response.sendRedirect("index.jsp");//upon successful execution, redirect to index.jsp


        } catch (SQLException ex) {
            out.println(ex);
        } catch (ClassNotFoundException ex) {
            out.println(ex);
        }
	}
	}
