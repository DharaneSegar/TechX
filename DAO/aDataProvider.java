package DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DBConnection.adminDB;
import Model.aModel;

public class aDataProvider implements aJava{
	public boolean readData(aModel am){
		adminDB db = new adminDB();
		Connection con = db.getCon();
		boolean status = false;
		
		String sql = "select * from admin where uname = ? and apwd = ?";
		PreparedStatement ps;
		try{
			ps = con.prepareStatement(sql);
			ps.setString(1,am.getUname());
			ps.setString(2, am.getApwd());
			
			ResultSet rs = ps.executeQuery();
			status  = rs.next();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return status;
		
	}
}
