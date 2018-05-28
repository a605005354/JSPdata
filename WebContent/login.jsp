<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>会员登陆</title>
</head>
<body>

<form action="check.jsp" method="POST">
账号: <input type="text" name="user">
<br />
密码: <input type="password" name="password" />
<input type="submit" value="提交" />
</form>

如果您还没有注册，请单击<a href="register.jsp">这里</a>注册

</body>
</html>