<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>子菜单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
   ul li{
   list-style:none;
   }
   a{
	text-decoration:none;
	}/*去除下划线*/

</style>
  </head>
    <body>
    <ul>
        <li><a href="stuManage.jsp" target="a3">学生信息管理</a></li>
        <li><a href="easyUI01.jsp" target="a3">学生信息管理</a></li>
        <li><a href="images/3.jpg" target="a3">船灯舞艺术之乡--平远县 </a></li>
        <li><a href="images/4.jpg" target="a3">火龙艺术之乡--丰顺县</a></li>
        <li><a href="images/5.jpg" target="a3">竹马艺术之乡--五华县</a></li>
        <li><a href="images/6.jpg" target="a3">杯花舞艺术之乡--兴宁市</a></li>
    </ul>
  </body>

</html>
