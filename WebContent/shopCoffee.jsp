<%@ page language="java"  import="java.sql.*"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购买咖啡</title>
</head>
<body>
<%  
   request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
   %>    
   <%
    String driver = "com.mysql.jdbc.Driver";    
    String url = "jdbc:mysql://localhost:3306/customer?useUnicode=true&characterEncoding=utf-8";    
    String use = "root";     
    String password = "";    
    Class.forName(driver);    
    Connection conn= DriverManager.getConnection(url,use,password);
    PreparedStatement sql1 =conn.prepareStatement("select id from customer where name=?");
    sql1.setString(1,name); 
    ResultSet rs =sql1.executeQuery();
    String ide="";
    while(rs.next()){
	ide= rs.getString("id");
    }
	
    PreparedStatement sql2 =conn.prepareStatement("insert into bought values(?,?)");  
    sql2.setString(1,ide);  
    sql2.setString(2,"1");   
    int rtn=sql2.executeUpdate(); 
   
    sql1.close();
    sql2.close();  
    conn.close();

	%>
	<% 
	out.println("购买成功！");
	%>
	<ul>
	<form action="membership.jsp" method="POST">
  <input type="hidden" name="user" value="<%=name%>">
	<input type="submit" value="返回"/>
	</form>
	</ul>
</body>
</html>