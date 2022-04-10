package sth.test.jsp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	public static Connection getConnection() {
		Connection con = null;
		String drivername = "com.mysql.jdbc.Driver";
		String urlstr = "jdbc:mysql://localhost:3306/jsptest";
		String username = "root";
		String password = "123";
		try {
			Class.forName(drivername);
		} catch (Exception e) {
			System.out.println("连接失败1");
			System.out.println(e);
		}
		try {
			con = DriverManager.getConnection(urlstr, username, password);
		} catch (SQLException e) {
			System.out.println("连接失败2");
			System.out.println(e);
		}
		return con;
	}
}