package DAO;
import Model.LoginBean;
import DBConnection.MyDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DataProvider implements Data {
	public boolean readData(LoginBean lg){
		
		MyDb db = new MyDb();//create a database connection object
		
		Connection con = db.getCon();//connect the database object
		
		boolean status = false;
		
		String sql = "select * from user where uname = ? and upwd = ?";//pass the username,password variable and select relevant values from the user table
		PreparedStatement ps;
		
		try{
			ps = con.prepareStatement(sql);//connect the prepared statement object
			
			//assigning the values fetched from the getter methods.
			ps.setString(1,lg.getUname());
			ps.setString(2, lg.getUpwd());
			
			ResultSet rs = ps.executeQuery();//execute the query and store the value to the resultset rs
			status  = rs.next();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return status;
		
	}

}
