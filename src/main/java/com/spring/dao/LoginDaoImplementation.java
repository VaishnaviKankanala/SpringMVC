package com.spring.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import com.spring.model.Login;

public class LoginDaoImplementation implements LoginDao {

	DataSource datasourcelogin;

	public void setDatasourcelogin(DataSource datasourcelogin) {
		this.datasourcelogin = datasourcelogin;
	}

	@Override
	public boolean VerifyLoginUser(Login login) {
		boolean userDetails = false;
		String error = "Invalid user";

		Connection conn = null;
		Statement stmnt = null;
		ResultSet rs = null;

		try {
			conn = datasourcelogin.getConnection();
			String sqlQuery = "select * from user where username = '" + login.getUsername() + "' and password= '"
					+ login.getPassword() + "'";
			stmnt = conn.createStatement();
			rs = stmnt.executeQuery(sqlQuery);
			if (rs.next()) {
				userDetails = true;
			} else {
				error = "Invalid Credentials";
			}
		} catch (SQLException e) {
			error = "db connection error";
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmnt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return userDetails;
	}

}
