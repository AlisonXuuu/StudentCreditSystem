package com.cn.attence.action;

import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.cn.attence.dao.DBConnect;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
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
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		DBConnect db = new DBConnect();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		List list = new ArrayList();
		String sql = "insert into userinfo(username,password)  values('"+username+"','"+password+"')";
		stmt.executeUpdate(sql);	
		conn.commit();
		return SUCCESS;
	
	}
}
