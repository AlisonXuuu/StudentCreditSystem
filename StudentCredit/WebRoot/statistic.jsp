<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
     <table align="center" border="1">
     <tr>
     <td colspan="2">
       <h3>统计学分</h3>
     </td>
        
     </tr>

		 <tr>  
 
    <th> 选修课学分</th>  
        <th> 必修课学分</th>      
    <tr>  
    <td><%=session.getAttribute("sum1") %></td>   
   <td><%=session.getAttribute("sum2") %></td>      
    </tr>           
		</table>
  </body>
</html>
