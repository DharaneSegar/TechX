package Controller;
import Model.LoginBean;
import DAO.DataProvider;

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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
		}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("username");
		System.out.println("Username passed" ); 
		
		String upwd = request.getParameter("password");
		System.out.println("Password passed" ); 
		//retrieving the user entered values from the login form
		
		LoginBean lg = new LoginBean();//create object of loginbean named lg
		lg.setUname(uname);
		lg.setUpwd(upwd);
		//assign the values retrieved from the login form to the login model class using setter method
		
		DataProvider dp = new DataProvider();//create an object of data provider named dp
		
		
		if(dp.readData(lg) == true){//call the readData method to the object dp passing the lg object as a parameter
			HttpSession session = request.getSession();//create a session object
			session.setAttribute("uname",uname);//create a session variable 
			System.out.println("LoggedIn Successfully");
			response.sendRedirect("index.jsp");//upon successful login, redirect to index.jsp
		}else{
			System.out.println("Invalid Username or password");
			response.sendRedirect("login.jsp");//upon unsuccessful execution, redirect to login.jsp to resubmit
			
		}
		
		
	
	}
}
	
	


