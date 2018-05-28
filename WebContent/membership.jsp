<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>会员中心</title>
</head>
<body>
<h1>欢迎回来！</h1>
<ul>
<b>会员名:</b>
<%
String name = new String((request.getParameter("user")).getBytes("ISO-8859-1"),"UTF-8");
%>
   <%=name%>
  <%
  out.println("请选择你要购买的物品:");
  %>
</ul>
<ul>
  <form action="shopCoffee.jsp" method="POST">
  <input type="hidden" name="name" value="<%=name%>">
<input type="submit" value="咖啡"/>
</form>
</ul>

<ul>
  <form action="shopTea.jsp" method="POST">
  <input type="hidden" name="name" value="<%=name%>">
  <input type="submit" value="茶"/>
</form>
</ul>

</body>
</html>