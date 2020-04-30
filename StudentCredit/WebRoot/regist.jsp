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
     <form name="form1" method="post" action="register">
      <table align="center" border="1">
		 <tr>  
    
    <tr> <td>账号</td>  
         <td><input name="username" type="text"/></td>
    </tr>
    <tr> <td>密码</td>  
         <td><input name="password" type="text"/></td>
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
