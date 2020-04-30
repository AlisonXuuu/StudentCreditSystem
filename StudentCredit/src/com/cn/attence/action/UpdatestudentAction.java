package com.cn.attence.action;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cn.attence.dao.DBConnect;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdatestudentAction extends ActionSupport{
	private int id;
	private String name;
	private String classe;
	private int checke;
	private String num;
	private String sum1;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getSum1() {
		return sum1;
	}
	public void setSum1(String sum1) {
		this.sum1 = sum1;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClasse() {
		return classe;
	}
	public void setClasse(String classe) {
		this.classe = classe;
	}
	public int getChecke() {
		return checke;
	}
	public void setChecke(int checke) {
		this.checke = checke;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String execute() throws SQLException, FileNotFoundException, IOException, ClassNotFoundException 
	{	
	DBConnect db = new DBConnect();
	Connection conn = db.getConnection();

	List list = new ArrayList();
	String sql = "update  studentinfo  set name=?,classe=?,checke=?,num=?,sum1=?  where id="+id;
	System.out.println("sql”Ôæ‰ «"+sql);	
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, name);
	stmt.setString(2, classe);
	stmt.setInt(3, checke);
	stmt.setString(4, num);
	stmt.setString(5, sum1);	
	stmt.executeUpdate();	
	conn.close();
	ActionContext ctx = ActionContext.getContext();
	Map session = ctx.getSession();
	session.put("list", list);
	return SUCCESS;
	}
}
