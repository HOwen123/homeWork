<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="reg" scope="request" class="com.howen.user.domain.Register"/>
<jsp:setProperty property="*" name="reg"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="js/check.js">
	
	<style type="text/css">
	body{
	margin:0px;
	padding:0px;
	}
	#Layer1{
	position:absolute;
	left:0px;
	top:0px; 
	width:100%; 
	height:100%
	}
	#Layer2{
	
	left:0px;
	top:0px; 
	width:100%; 
	height:100%;	
	}
	.form1{
	position:absolute;
	left:50%;
	top:50%;
	margin-left:-200px;
	margin-top:-250px;
	width:600px;
	height:500px;
	border:1px;
	border-radius:15px;
	border-shadow:1px 1px 4px #000000;	
	}
	.form_left{
		float:left;
		
		}
		.form_right{
		float:left;
		
		}
	.form_out{
		margin:70px;
		}
	</style>
  </head>
  
  <body>
	<div id="Layer1">  
    <img alt="" src="images/bg.jpg" width=100%; height="100%"/>
    </div>
    <div id="Layer2">
    	<div class="form1">
        	<div class="form_out">
    		<h2>绿叶书店会员系统注册</h2>
            <br><br>
            <form action="InsertServlet"  method="post">
            <table>
            	<tr><td>用户名：</td><td><input type="text" name="name" size="16px" value="<jsp:getProperty name="reg" property="name"/>"/><%=reg.getErrorMsg("errname") %><br></td></tr>
            	<tr><td>密&nbsp;码：</td><td><input type="password" name="password" size="16px" value="<jsp:getProperty name="reg" property="password"/>"/><%=reg.getErrorMsg("errpassword") %><br></td></tr>
            	<tr><td>年&nbsp;龄：</td><td><input type="text" name="age" size="16px" value="<jsp:getProperty name="reg" property="age"/>"/><%=reg.getErrorMsg("errage") %><br></td></tr>
            	<tr><td>电&nbsp;邮：</td><td><input type="text" name="email" size="16px" value="<jsp:getProperty name="reg" property="email"/>"/><%=reg.getErrorMsg("erremail") %><br></td></tr>
            	<tr><td></td><td><input type="submit" value="注册" name="submit"/><input type="reset" value="取消"/><a href="Login.jsp"><button>登录</button></a></td></tr>
            </table>             	
                
            </form>	
    	</div>
        </div>
    </div>
</body>
</html>
