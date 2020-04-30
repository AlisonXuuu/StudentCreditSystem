package com.cn.attence.action;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cn.attence.dao.DBConnect;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport{

	public String execute() throws SQLException, FileNotFoundException, IOException, ClassNotFoundException 
	{
		HttpServletRequest request = ServletActionContext.getRequest();
		String  id=request.getParameter("id");
		System.out.println("id∫≈ «"+id);
		ActionContext ct = ActionContext.getContext();	
		DBConnect db = new DBConnect();
		Connection conn = db.getConnection();
		String sql = "delete from studentinfo where id ="+id+"";
		System.out.println(sql);
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		
		conn.commit();
		return SUCCESS;
	}
}
