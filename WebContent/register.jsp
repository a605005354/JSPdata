<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>注册页面</title>
</head>
<script type="text/javascript">
function isValid(form)    
{    
if (form.username.value=="")    
 {    
 alert("用户名不能为空");    
 return false;    
 }    
if (form.pwd.value!=form.pwd2.value)    
{    
alert("两次输入的密码不同！");    
return false;    
}    
else  if (form.pwd.value=="")    
{    
alert("用户密码不能为空！");    
return false;    
}    
else return true;    
}   
</script>

<body>
 <form action="checkRegister.jsp" method="post" onSubmit="return isValid(this);">  
<table>  
  <tr><td>用户名:</td><td><input type="text" name="username" size="20"/></td></tr>  
  <tr><td>输入密码:</td><td><input type="text" name="pwd" size="20"/></td></tr>  
  <tr><td>再次确认密码:</td><td><input type="text"name="pwd2" size="20"/></td><tr>  
  <tr><td><input type="submit" value="注册"/><td><input type="reset" value="重置"/>  
  </table>  
</form> 

</body>
</html>