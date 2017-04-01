<%@page import="java.sql.Time"%>
<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'counter.jsp' starting page</title>
    
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
  <%
		if(session.isNew()){
   		Integer count=(Integer)application.getAttribute("count");
   		if(count!=null){
   			count=count+1;
   		}else{
   			count=1;
   		}
   		application.setAttribute("count", count);
   		}
   	 %>
   	 <%
   	Date visitTime=new Date(System.currentTimeMillis());
   	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
   	String time=sdf.format(visitTime);
    Integer i=(Integer)application.getAttribute("count");
    out.print("统计访问量：目前有"+i+"个人访问,"+"当前访问时间:"+time);
     %>
  </body>
</html>
