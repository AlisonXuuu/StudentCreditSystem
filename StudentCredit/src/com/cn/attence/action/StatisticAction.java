package com.cn.attence.action;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.cn.attence.dao.DBConnect;
import com.cn.entity.StudentCredit;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class StatisticAction extends ActionSupport{
	private Connection conn;
	public String execute() throws FileNotFoundException, IOException, ClassNotFoundException, SQLException 
	{
		int summ1=0,summ2=0;
		DBConnect db = new DBConnect();
		Connection conn = db.getConnection();

		String sql = "select * from studentinfo";
		List list = new ArrayList();
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();

		while(rs.next()){
			StudentCredit  student =new StudentCredit();
			if(rs.getString("classe").equals("Ñ¡ÐÞ¿Î")){
				summ1+=rs.getInt("checke");
			}
			if(rs.getString("classe").equals("±ØÐÞ¿Î")){
				summ2+=rs.getInt("checke");
			}
		}
		System.out.println("sum1"+summ1);
		conn.commit();
		conn.close();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession  session=request.getSession();
		session.setAttribute("sum1", summ1);
		session.setAttribute("sum2", summ2);
		return SUCCESS;

	}
}
