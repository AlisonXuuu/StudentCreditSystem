package com.cn.attence.action;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.cn.attence.dao.DBConnect;
import com.cn.entity.StudentCredit;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowstudentAction extends ActionSupport{
public String execute() throws Exception{
		
		DBConnect db = new DBConnect();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		String sql = "select * from studentinfo";
		ResultSet rs = stmt.executeQuery(sql);
		List list = new ArrayList();
		while(rs.next()){
			StudentCredit student =new StudentCredit();		
			student.setId(rs.getInt("id"));
			student.setName(rs.getString("name"));
			student.setNum(rs.getString("num"));
			student.setClasse(rs.getString("classe"));
			student.setChecke(rs.getInt("checke"));
			list.add(student);
		}
		conn.close();
		ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		session.put("list", list);
		return SUCCESS;
	}
}
