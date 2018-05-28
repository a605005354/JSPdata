<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>账户列表</title>
</head>
<body>
<!--
JDBC 驱动名及数据库 URL 
数据库的用户名与密码，需要根据自己的设置
useUnicode=true&characterEncoding=utf-8 防止中文乱码
 -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=utf-8"
     user="root"  password=""/>
 

<sql:query dataSource="${snapshot}" var="result">
SELECT * from customer;
</sql:query>

<h1>后台账号数据</h1>
<table border="1" width="100%">
<tr>
   <th>ID</th>	
   <th>用户名</th>
   <th>密码</th>
</tr>

<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.password}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>