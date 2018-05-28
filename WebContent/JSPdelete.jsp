<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>

<head>
<title>delete 操作</title>
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

<!--
删除 ID 为 11 的数据
 -->
<sql:update dataSource="${snapshot}" var="count">
  DELETE FROM customer WHERE name = ?
  <sql:param value="niewei" />
</sql:update>
 删除成功！
</body>
</html>