<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #C9D7E5;
	background-image: url(images/t3.jpg);
}
.style1 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style></head>

<body>
<%@ include file="hometabs.html" %>

<%@ include file="db.jsp" %>
<br />
<br />
<br />
<br />

<div align="center">
  <p>Forgot Password </p>
</div>
<% 

if(request.getParameter("check")==null){
%>
<form  method="get" action="">
  <table width="480" border="1" align="center">
    <tr>
      <td width="150">enter your phone </td>
      <td width="257"><input name="email" type="text"  /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="check" value="Get My password" /></td>
    </tr>
  </table>
</form>
<% } %>

<% 

if(request.getParameter("check")!=null){

rst=stmt.executeQuery("select password from customer where phone='"+request.getParameter("email")+"' ");
if(rst.next()){

out.print(rst.getString(1));
}else{
out.print("No such Customer exist");

}



}
 %>








</body>
</html>
