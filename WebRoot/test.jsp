<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
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
    <table width="400px" border="0" cellspacing="1" cellpadding="0">
    	<tr>
    		<td width="109" bgcolor="#CC66FF"><div align="center">学号</div></td> 
    		<td width="112" bgcolor="#CC66FF"><div align="center">姓名</div></td> 
    		<td width="175" bgcolor="#CC66FF"><div align="center">成绩</div></td> 
    	</tr>
    	<%
    	int n=5;
    	String bg=null;
    	for(int i=1;i<=n;i++){
    		if(i%2==0)
    		 bg="#33FF66";
    		else
    		 bg="#FFFF99";
    	}
    	 %>
    	 <tr>
    	 	<td bgcolor="<%out.print(bg);%>">&nbsp;</td> 
    	 	<td bgcolor="<%out.print(bg);%>">&nbsp;</td>
    	 	<td bgcolor="<%out.print(bg);%>">&nbsp;</td>
    	 </tr>
    </table>
    
  </body>
</html>
