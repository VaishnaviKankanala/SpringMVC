package com.spring.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import com.spring.model.Register;

public class RegisterDaoImplementation implements RegisterDao{

	DataSource datasource;

	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
	}

	@Override
	public boolean RegusterUser(Register register) {
		boolean registered = false;
		String error = "Registeration Unsuccessful";
		
		Connection conn = null;
		Statement stmnt = null;
		
		try{
			conn = datasource.getConnection();
			String sqlQuery = "INSERT INTO USER (firstname, lastname, email, phonenumber, username, password, confirmpassword) VALUES ('"+register.getFirstname()+"','"+register.getLastname()+"','"+register.getEmail()+"', '"+register.getPhonenumber()+"', '"+register.getUsername()+"', '"+register.getPassword()+"', '"+register.getConfirmpassword()+"')";
			stmnt = conn.createStatement();
			int count = stmnt.executeUpdate(sqlQuery);
			if(count>0){
				registered = true;
			}else{
				error = "Exsisting user";
			}
		}catch(SQLException e){
			error = "Unsuccessful";
			e.printStackTrace();
		}finally{
			try{
				stmnt.close();
			conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}	
		return registered;
	}
	
}
