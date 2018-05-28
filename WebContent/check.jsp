<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>check user and password</title>
</head>
<body>

<%  
   request.setCharacterEncoding("utf-8");  
   String users=request.getParameter("user");  
   String pass=request.getParameter("password");  
   boolean flag=false;  
   PreparedStatement sql=null;    
   ResultSet rs=null;  
   Connection conn=null;  
%>  

<%   
    String driver = "com.mysql.jdbc.Driver";    
    String url = "jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=utf-8";    
    String use = "root";     
    String password = "";    
    Class.forName(driver);    
    conn= DriverManager.getConnection(url,use,password);    
    sql =conn.prepareStatement("select * from customer where name=? and password=?");  
    sql.setString(1,users);  
    sql.setString(2,pass);  
    rs=sql.executeQuery();  
    if (rs.next()) {    
    flag=true;  
     }  
   rs.close();  
   sql.close();  
   conn.close();  
  %>  
  
  <% if (flag==true){ %>  
<jsp:forward page="membership.jsp"/>  
<%   
  }else  
if (flag==false){  
%>  
<jsp:forward page="fail.jsp"/> 
<%} %> 
</body>
</html>