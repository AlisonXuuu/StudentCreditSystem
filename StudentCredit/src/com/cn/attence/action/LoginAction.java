package com.cn.attence.action;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cn.attence.dao.DBConnect;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String execute() throws Exception{
		
		DBConnect db = new DBConnect();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		List list = new ArrayList();
		String sql = "select * from userinfo";
		ResultSet rs = stmt.executeQuery(sql);
	while(	rs.next()){;
		if(rs.getString("username").equals(this.username)  && rs.getString("password").equals(this.password))
			return SUCCESS;	
	}
		return ERROR;
	}
}
