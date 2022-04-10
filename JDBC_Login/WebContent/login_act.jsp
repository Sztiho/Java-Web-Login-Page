<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="JspUserDao" class="sth.test.jsp.JspUserDao" />
	<jsp:setProperty name="JspUserDao" property="*" />
	<%
	String id = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	System.out.println(id);
	if (id != "") {
		boolean user = JspUserDao.login(id, pwd);
		if (user) {
			session.setAttribute("loginUser", id);
	%>
	<jsp:forward page="main.jsp" />
	<%
	} else {
	session.setAttribute("error", "1");
	%>
	<jsp:forward page="login.jsp" />
	<%
	}
	} else {
	session.setAttribute("error", "2");
	%>
	<jsp:forward page="login.jsp" />
	<%
	}
	%>​
</body>
</html>