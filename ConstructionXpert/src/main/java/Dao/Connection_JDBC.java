package Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connection_JDBC {

	private static Connection connection;
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 connection=DriverManager.getConnection
					 ("jdbc:mysql://localhost:3306/constructionxpert","root","Ilham@2020");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}
	public static Connection getConnection() {
		return connection;
	}
}
