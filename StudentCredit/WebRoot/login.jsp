<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
  <h1 align="center">ѧ��ͳ��ϵͳ</h1>
   <form name="form1" method="post" action="login">
      <table>
      <tr>
        <td> �˺�<input   type="text"name="username" ></td>
      </tr>
      <tr>
        <td> ����<input type="text" name="password" ></td>
      </tr>
      <tr>
        <td> <input type="submit"  value="��¼" >
         <a href="regist.jsp">ע��</a>
        </td>
       
      </tr>
    </table>
    </form>
  </body>
</html>
