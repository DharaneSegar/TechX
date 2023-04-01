package Controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.aDataProvider;
import Model.aModel;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
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
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		String apwd = request.getParameter("apwd");
		//retrieving the user entered values from the login form
		
		
		aModel am = new aModel();//create object of aModel named am
		am.setUname(uname);
		am.setApwd(apwd);
		
		aDataProvider dp = new aDataProvider();
		//assign the values retrieved from the admin login form to the login model class using setter method
		
		if(dp.readData(am) == true){//call the readData method to the object dp passing the am object as a parameter
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
