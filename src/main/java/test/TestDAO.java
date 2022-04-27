package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.DriverManager;
import test.Test;

public class TestDAO
{
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public TestDAO() 
	{
		try {
			String dbURL = "jdbc:mysql://localhost:3306/test";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL, dbID,dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int join(int id ,String guestNAme,String  pass_word,String message)
	{
		String SQL = "INSERT INTO board VALUES(?,?,?,?)";
		try {
			pstmt=conn.prepareStatement(SQL);//DB���� SQL�����غ�
			pstmt.setInt(1, id);
			pstmt.setString(2, guestNAme);
			pstmt.setString(3, pass_word);
			pstmt.setString(4, message);
				
			return  pstmt.executeUpdate();//executeUpdate => ����,executeQuery => �˻�			
		}catch (Exception e){
			e.printStackTrace();
		}
		return -1;
	}
}
