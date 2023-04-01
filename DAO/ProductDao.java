package DAO;


	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;

import Model.product;


	public class ProductDao {
		
		private String dbUrl = "jdbc:mysql://localhost:3306/techx";
		private String dbUname = "root";
		private String dbPassword = "dharane123";
		private String dbDriver = "com.mysql.cj.jdbc.Driver";
		

		public void loadDriver(String dbDriver)
		{
			try {
				Class.forName(dbDriver);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		public Connection getConnection(){
			Connection con=null;
			try {
				con=DriverManager.getConnection(dbUrl, dbUname, dbPassword);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return con;
		}
		
		public String insert(product mem)throws SQLException{
			
			loadDriver(dbDriver);
			Connection con=getConnection();
			String result = "Data entered successfully";
			String sql = "insert into product values(?,?,?,?)";
			
			PreparedStatement ps;
			try {
				ps = con.prepareStatement(sql);
			ps.setString(1, mem.getProduct_id());
			ps.setString(2, mem.getProduct_name());
			ps.setString(3, mem.getProduct_price());
			ps.setString(4, mem.getProduct_desc());
			
			ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				result="data not entered";
				
			}
			return result;
		}
		
		
	}


