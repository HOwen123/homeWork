<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'stuManage.jsp' starting page</title>
    
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
  	  <form action="addStuInfo" method="post">
	    <table>
	       <tr>
	       	<td>姓名：</td><td><input type="text" name="stuname"></td>
	       </tr>
	       <tr><td>年龄：</td><td><input type="text" name="age"></td></tr>
	       <tr><td>性别：</td>
	       	<td>
	         <select name="sex">
	       		<option>男</option>
	       		<option>女</option>
	      	 </select>
	      	</td></tr>
	       <tr><td>民族：</td><td><input type="text" name="nation"></td></tr>
	       <tr><td>地址：</td><td><input type="text" name="address"></td></tr>
	       <tr><td>爱好：</td><td><input type="text" name="hobby"> </td></tr>
	       <tr><td></td><td><input type="submit" value="保存"><input type="reset" value="清除"></td></tr>
	    </table>
	    </form>
	  </body>
</html>
