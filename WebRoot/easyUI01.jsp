<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>EasyUI</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5/themes/icon.css">
	<script type="text/javascript" src="jquery-easyui-1.5/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-easyui-1.5/jquery.easyui.min.js"></script>
</head>
<body>
	<h1>DataGrid</h1>
	<table id="tt" class="easyui-datagrid" style="width:600px;height:250px"
			url="PageAction"
			title="Load Data" iconCls="icon-save"
			rownumbers="true" pagination="true">
		<thead>
			<tr>
				<th field="stuname" width="80" align="center">学生姓名</th>
				<th field="age" width="80" align="center">年龄</th>
				<th field="sex" width="80" align="center">性别</th>
				<th field="address" width="80" align="center">地址</th>
				<th field="nation" width="150" align="center">民族</th>
				<th field="hobby" width="60" align="center">爱好</th>
			</tr>
		</thead>
	</table>
  </body>
</html>
