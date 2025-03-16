<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="admintabs.html" %>
<title>Untitled Document</title>
<style type="text/css">
<!--


-->
</style></head>

<body>
<%@ include file="db.jsp" %>
<div align="center"><strong>Add New Service Details </strong></div>
<form id="form1" name="form1" method="post" action="">
  <table bgcolor="#999999" width="513" border="1" align="center">
    <tr>
      <td width="285">Enter Service name </td>
      <td width="212"><input name="s1" type="text"  /></td>
    </tr>
    <tr>
      <td>Description</td>
      <td><textarea name="s2" cols="40" rows="5"></textarea></td>
    </tr>
    <tr>
      <td>Price Per service </td>
      <td><input name="s3" type="number" /></td>
    </tr>
    <tr>
      <td>Select Category type </td>
      <td><select name="s4" id="s5">
	  <option></option>
        <option>Photographer</option>
        <option>Plumber</option>
        <option>Carpenter</option>
		<option>Painter</option>
      </select>      </td>
    </tr>
	 <tr>
      <td width="285">Enter Email_id </td>
      <td width="212"><input name="s5" type="email"  required/></td>
    </tr>
	 <tr>
      <td width="285">Enter Password </td>
      <td width="212"><input name="s6" type="text"  required/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Add service" /></td>
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
String s5=request.getParameter("s5");
String s6=request.getParameter("s6");


try{
int x=stmt.executeUpdate("insert into services(name,description,price,category,username,password) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
if(x!=0){
out.print("Service  Added Successfully");
}else{
out.println("this Service already exist");
}

}catch(Exception e){
out.println("this Service already exist");
}
}
 %>

</body>
</html>
