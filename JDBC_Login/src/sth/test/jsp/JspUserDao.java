package sth.test.jsp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import sth.test.jsp.*;

public class JspUserDao {

	private Connection con;

	public boolean login(String name, String pwd) throws Exception {
		con = DbConnection.getConnection();
		Statement stmt = con.createStatement();
		String strsql = "select * from jspuser where username='" + name + "' and password='" + pwd + "';";
		System.out.println(strsql);
		ResultSet rs = stmt.executeQuery(strsql);
		JspUser item = null;
		while (rs.next()) {
			item = new JspUser();
			item.setUsername(rs.getString("username"));
			item.setPassword(rs.getString("password"));
			if (name.equals(rs.getString("username")) && pwd.equals(rs.getString("password"))) {
				rs.close();
				stmt.close();
				con.close();
				return true;
			}
		}
		return false;
	}
}