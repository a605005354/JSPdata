<%@ page language="java"  import="java.sql.*"  contentType="text/html; charset=utf-8" 
     pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册成功！</title>
</head>
<body>
<br>  
   <%  
   request.setCharacterEncoding("utf-8");  
   String users=request.getParameter("username");  
   String pass=request.getParameter("pwd");  
   %>  
   <%   
    String driver = "com.mysql.jdbc.Driver";    
    String url = "jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=utf-8";    
    String use = "root";     
    String password = "";    
    Class.forName(driver);    
    Connection conn= DriverManager.getConnection(url,use,password);    
    PreparedStatement sql =conn.prepareStatement("insert into customer(name,password)values(?,?)");  
    sql.setString(1,users);  
    sql.setString(2,pass);   
    int rtn=sql.executeUpdate(); 
   
    sql.close();  
    conn.close();
    out.println("注册成功！");
    %> 
    	点<a href="login.jsp">此</a> 返回登陆界面
      
</body>
</html>