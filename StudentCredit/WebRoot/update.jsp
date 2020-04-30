<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.cn.attence.dao.*" %>
<%@page import="com.cn.entity.*" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <h3 align="center"> 这是修改页面</h3>
  <%
  
      String  id1=(String)request.getParameter("id");
        int id=Integer.parseInt(id1);
        StudentDao  su=new StudentDao();
        StudentCredit  student=(StudentCredit)su.getSuById(id);
        System.out.print("这里的值"+student);
        
   %>
     <form name="form1" method="post" action="updateStudent">
      <table align="center" border="1">
		 <tr>  
    <tr> <td>id</td>  
         <td><input name="id" type="text" readonly="true" value="<%=id%>"/></td>
    </tr>
    <tr> <td>课程名称</td>  
         <td><input name="name" type="text" value="<%=student.getName()%>"/></td>
    </tr>
    <tr> <td>课程编号</td>  
         <td><input name="num" type="text" value="<%=student.getNum()%>"/></td>
    </tr>   
   <tr> <td>课程类型</td>  
         <td><input name="classe" type="text" value="<%=student.getClasse()%>"/></td>
    </tr>
       <tr> <td>课程分数</td>  
         <td><input name="checke" type="text" value="<%=student.getChecke()%>"/></td>
    </tr>
      </tr>
       <tr> <td>备注</td>  
         <td><input name="sum1" type="text" value="<%=student.getSum1()%>"/></td>
    </tr>
     <tr>
     
        <td> <input type="submit"  value="修改" >
        <input type="reset" value="重置" >
        </td>
       
      </tr>
      <a href="index.jsp">回到主页</a>
		</table>
		</form>
  </body>
</html>
