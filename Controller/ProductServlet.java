package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProductDao;
import Model.product;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String product_id = request.getParameter("id");
	String product_name = request.getParameter("name");
	String product_price= request.getParameter("price");
	String product_desc = request.getParameter("description");
	
	//retrieving the admin entered values from the product form

	product pro=new product(product_id,product_name,product_price,product_desc);//create object of product
	
	ProductDao pDao=new ProductDao();//create object of productDao
	String result = null;
	try {
		result = pDao.insert(pro);//insert the product details to product
		System.out.println("Data entered successfully");
		response.sendRedirect("allProducts.jsp");//upon successful execution, redirect to allProducts.jsp
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	

	}
	
}
