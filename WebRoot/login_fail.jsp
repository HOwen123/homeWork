<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录失败</title>
    <script type="text/javascript">
    	var t=4;
    	function showTime(){
    	t-=1;
    	document.getElementById("time").innerHTML=t;
    	setTimeout("showTime",1000);
    	
    	}
    	showTime();
    </script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Refresh" content="3;url=Login.jsp">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	.STYLE1{
		color:#ff0000;
	}
	</style>
  </head>
  
  <body>
 	   用户名密码错误，请重新输入！
 	 <table>
 	 	<tr>
 	 		<td class="FontBlack STYLE1">该页面将在</td>
 	 		<td class="FontBlack"><p class="STYLE1" id="time">3</p></td>
 	 		<td class="FontBlack STYLE1">秒后自动跳转</td>
 	 	</tr>
 	 </table>  
  </body>
</html>
