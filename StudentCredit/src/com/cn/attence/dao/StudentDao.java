package com.cn.attence.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.cn.entity.StudentCredit;
import com.opensymphony.xwork2.ActionContext;



public class StudentDao {
	//������ѯ
	/** 
	 *  ͨ��id ȡ��ĳ��ѧ����Ϣ 
	 * @param id 
	 * @return 
	 */  
	public StudentCredit getSuById(int id) throws Exception{ 
		StudentCredit student=null;
		DBConnect db = new DBConnect();
		Connection conn = db.getConnection();
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql = "select * from studentinfo where id="+id;
		System.out.println("������ѯsql���"+sql);
		ResultSet rs = stmt.executeQuery(sql);		
		if(rs.next()){
			 student =new StudentCredit();
	    	student.setId(rs.getInt("id"));
			student.setName(rs.getString("name"));
			student.setNum(rs.getString("num"));
			student.setClasse(rs.getString("classe"));
			student.setChecke(rs.getInt("checke"));	
			student.setSum1(rs.getString("sum1"));	
			System.out.println("����ֵ"+student.getSum1());
		}
		
		conn.close();
		return student;  
	}
}
