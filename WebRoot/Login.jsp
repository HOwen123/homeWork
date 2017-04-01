<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="reg" scope="request" class="com.howen.user.domain.Register"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
	<style type="text/css">
	body{
	margin:0px;
	padding:0px;
	}
	a{
	text-decoration:none;
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
	width:400px;
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
		    	<%	
     	Date visitTime=new Date(System.currentTimeMillis());
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time=sdf.format(visitTime);
		Integer i=(Integer)application.getAttribute("count");
		out.println("你是第"+i+"位访客，"+"当前访问时间:"+time);
    %>
        	<div class="form_out">
    		<h2>绿叶书店会员系统登陆</h2>
            <br><br>
            <form action="login" method="post">
            <table>
            	<tr><td>用户名：</td><td><input type="text" name="name" size="24px" /><br></td></tr>
            	<tr><td>密&nbsp;码：</td><td><input type="password" name="password" size="24px"/><br></td></tr>
            	<tr><td></td><td><input type="submit" value="登陆" name="submit"/><input type="reset" value="取消"/><button><a href="register.jsp">注册</a></button></td></tr>
            </table>
      </form>
            </div>
       </div>
    </div>
  </body>
</html>
