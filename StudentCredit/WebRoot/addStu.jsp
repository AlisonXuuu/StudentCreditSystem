<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
     <form name="form1" method="post" action="addStudent">
      <table align="center" border="1">
		 <tr>  
    
    <tr> <td>课程名称</td>  
         <td><input name="name" type="text"/></td>
    </tr>
    <tr> <td>课程编号</td>  
         <td><input name="num" type="text"/></td>
    </tr>   
   <tr> <td>课程类型</td>  
         <td>
          <select  name="classe">
             <option value ="选修课">选修课</option>
            <option value ="必修课">必修课</option>       
         </select>          
         </td>
    </tr>
       <tr> <td>课程分数</td>  
         <td><input name="checke" type="text"/></td>
    </tr>
      </tr>
       <tr> <td>备注</td>  
         <td><input name="sum1" type="text"/></td>
    </tr>
     <tr>
     
        <td> <input type="submit"  value="添加" >
        <input type="reset" value="重置" >
        </td>
       
      </tr>
      <a href="index.jsp">回到主页</a>
		</table>
		</form>
  </body>
</html>
