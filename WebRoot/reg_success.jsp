<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reg_success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  <jsp:useBean id="reg" scope="request" class="com.howen.user.domain.Register"/>
  <jsp:setProperty property="*" name="reg"/>
  <body>
	恭喜你，注册成功！你的注册信息如下：<br>
	用户名：<jsp:getProperty property="name" name="reg"/><br>
	密&nbsp;&nbsp;码:<jsp:getProperty property="password" name="reg"/>
	年&nbsp;&nbsp;龄：<jsp:getProperty property="age" name="reg"/><br>
	E-MAIL:<jsp:getProperty property="email" name="reg"/><br>
	<a href="Login.jsp">登录</a>
  </body>
</html>
