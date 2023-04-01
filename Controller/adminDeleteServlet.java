package Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adminDeleteServlet
 */
@WebServlet("/adminDeleteServlet")
public class adminDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminDeleteServlet() {
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
		String uname = (String)session.getAttribute("uname");

        try{
        	Connection con = null;
            Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "dharane123");//database connection

            PreparedStatement pst =con.prepareStatement("DELETE FROM admin WHERE uname= '"+uname+"'");//pass the id variable to the admin table and delete the relevant record       
            pst.executeUpdate();
            System.out.println("Account deleted successfully!"); 
            response.sendRedirect("index.jsp");
			
	   } catch (SQLException ex1) {
            System.out.println(ex1);
       } catch (ClassNotFoundException ex1) {
            System.out.println(ex1);
       }
	}
}

