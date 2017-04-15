<%@page import="com.howen.user.domain.StuInfo"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show_stuinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function validate(){
		var pageIndex = document.getElementsByName("pageIndex")[0].value;
		if(pageIndex>${totalPages}){
			alert("你输入的页面大于最大页数，页面将跳转到首页!");
			
			window.document.location.href="PageAction";
			return false;
		}
		return true;	
	}
	</script>
  </head>
  
  <body>
  
    <a href="PageAction?pageIndex=1">首页</a>
  	<a href="PageAction?pageIndex=${pageIndex-1}">上一页</a>
  	<a href="PageAction?pageIndex=${pageIndex+1}">下一页</a>
  	<a href="PageAction?pageIndex=${totalPages}">末页</a>(<%=request.getAttribute("pageIndex") %>/<%=request.getAttribute("totalPages") %>)
	共<font color="red"><%=request.getAttribute("totalPages") %></font>页&nbsp;&nbsp;
	共<font color="red"><%=request.getAttribute("pageCounts") %></font>条记录
	<form action="PageAction" onsubmit="return validate();">
		<font size="4">跳转至</font>
		<input type="text" size="2" name="pageIndex">页
		<input type="submit" value="跳转">
	</form>
	<table style="border：solid 1">
	<tr><td style="width:90px;">学生姓名</td><td style="width:90px;">年龄</td><td style="width:90px;">性别</td>
	<td style="width:90px;">住址</td><td style="width:90px;">民族</td><td style="width:90px;">爱好</td></tr>
  	<%
  	List list = (List)request.getAttribute("list");
  	Iterator it = list.iterator();
  	
  	while(it.hasNext()){
  	StuInfo sInfo = (StuInfo)it.next();
  	out.print("<br>");
  	out.print("<tr>"+"<td>"+sInfo.getStuname()+"</td>"+"<td>"+sInfo.getAge()+"</td>"+"<td>"+sInfo.getSex()
  	+"</td>"+"<td>"+sInfo.getAddress()+"</td>"+"<td>"+sInfo.getNation()+"</td>"+"<td>"+sInfo.getHobby()+"</td>"+"<tr>");
  	} 
  	 %>
  	 <tr><td style="width:90px;"></td><td style="width:90px;"></td><td style="width:90px;"></td>
	<td style="width:90px;"></td><td style="width:90px;"></td><td style="width:90px;"><a href="stuManage.jsp">增加</a></td></tr>
 	 </table> 	
  </body>
</html>
