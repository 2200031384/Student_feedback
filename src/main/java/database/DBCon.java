package database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCon {
	static Connection con=null;
	 public static Connection getConnection() {
		try { 
			if (con==null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stufeedback","root","Nikitha@7");
			
			}
			return con;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		
		}
	}

}
