<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="hometabs.html" %>
<title>Untitled Document</title>
<style type="text/css">
<!--


-->
</style></head>

<body>
<%@ include file="db.jsp" %>
<div align="center"><strong>Add New Customer Details </strong></div>
<form id="form1" name="form1" method="post" action="">
  <table bgcolor="#666666" width="513" border="1" align="center">
    <tr>
      <td width="285">Enter Customer name </td>
      <td width="212"><input name="s1" type="text" pattern="[a-zA-Z][a-zA-Z ]{2,}"  title=" Enter name  "   required /></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><textarea name="s2" cols="40" rows="5" required></textarea></td>
    </tr>
    <tr>
      
      <td> mobile no. </td>
      <td><input name="s3" type="text" pattern="^([6789])(?!.*(\d)(?:\1{3}|\1*-\1*|\1*-\1*-\1*))\d{9}$" title="10 digit phone number with no digit repeated more than three times" required/></td>

</tr>
    <tr>
      <td>password</td>
      <td><input name="s4" type="password" required/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Register" /></td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>

<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");

try{
int x=stmt.executeUpdate("insert into Customer(name,address,phone,password) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
if(x!=0){
out.print("Customer  registered Successfully");
}else{
out.println("this Customer already exist");
}

}catch(Exception e){
out.println("this Customer already exist");
}
}
 %>

</body>
</html>
