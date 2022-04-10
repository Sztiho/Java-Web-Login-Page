<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录界面</title>
<link rel="stylesheet" type="text/css" href="css/css.css" />
<meta charset="UTF-8">

</head>
<body>
	<form method=post action="login_act.jsp">
		<h1>登录用户</h1>
		<input class="box1" type=text size=15 name="name" placeholder=用户名><br />
		<input class="box1" type=password size=15 name="pwd" placeholder=密码>
		<br>
		<br>
		<br> 
		<input class="box2" type="submit" value="登录" /> 
		<input class="box2" type="button" onclick=document.form1.reset() value="重置" />
		<br>
		<br>
		<br>
		<%
		String errorcode = (String) session.getAttribute("error");
		if ("1".equals(errorcode)) {
			out.println("用户名与密码错误！");
			session.setAttribute("error", "0");
		}
		if ("2".equals(errorcode)) {
			out.println("请输入用户名！");
			session.setAttribute("error", "0");
		}
		if ("3".equals(errorcode)) {
			out.println("请登录！");
			session.setAttribute("error", "0");
		}
		%>
	</form>
</body>
</html>