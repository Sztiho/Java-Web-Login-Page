<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>登录成功</title>
<link rel="stylesheet" type="text/css" href="css/css2.css" />
</head>
<body>
	<br>
	<br>
	<br>
	<%
	String strlogin = (String) session.getAttribute("loginUser");
	if (strlogin == null) {
		session.setAttribute("error", "3");
		response.sendRedirect("login.jsp");
	}
	%>
	<div class="con">
		<div class="box1">
			<h1>登录成功!</h1>
			<h2>欢迎! <%out.print(strlogin);%>
			</h2>
			<input class=box2 type="button" value="注销" onclick="window.location.href ='login.jsp'">
		</div>
	</div>​
</body>
</html>