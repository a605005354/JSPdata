<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>账号密码错误</title>
</head>
<body>
<% 
	out.println("您的账号密码错误，请重新输入");
%>
<br>
</br>
<%
	out.println("请稍等3秒...");
	response.setHeader("refresh","3;url=login.jsp");
%>

</body>
</html>