<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
    <th> id</th> 
    <th> �γ̱��</th>  
    <th> �γ�����</th>  
    <th> �γ�����</th>  
    <th> �γ̷���</th>     
     <th> ����</th>  
   <c:forEach items="${list}" var ="bk">  
    <tr>  
    <td>${bk.id }</td>  
    <td>${bk.num }</td>  
    <td>${bk.name}</td>  	
    <td> ${bk.classe}    </td>  
    <td>${bk.checke}</td>
        <td><a href="delete?id=${bk.id}">ɾ��</a></td> 
         <td><a href="update.jsp?id=${bk.id}">�޸�</a></td> 
    </tr>  
	    </c:forEach> 
	           
		</table>
  </body>
</html>
