<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="hometabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: auto;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: auto%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}

.logindiv {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-left:20%;
  margin-right:20%;
  color:#000033;
}
.style1 {
	color: #000066;
	font-weight: bold;
}
</style>
<body><br />
<br />

<div class="logindiv" >
<h3 align="center" style="color:#0000CC">Service Provider Login </h3>
  <form action="" method="post">
    <label for="fname">Username</label>
    <input type="text"  name="username" placeholder="Username">

    <label for="lname">Password</label>
    <input type="password"  name="password" placeholder="Your Password.">

   
  
   <center><input align="middle" type="submit" name="Submit" value="Submit">

   <a href="fergot.jsp"  ><input name="" type="button" value="Forgot Password" /></a>
  </form>
</div>
<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("username");
String s2=request.getParameter("password");



rst=stmt.executeQuery("select * from services where username='"+s1+"' and password='"+s2+"'");
if(rst.next()){
session.setAttribute("sid",rst.getString(7));
session.setAttribute("semail",s1);
%>
<script>


window.open("usertabs.html","_self");
</script>
<%
}else{
%>
<script>

alert("login Failed");

</script>
<%
}






}


%>
</body>

</html>
