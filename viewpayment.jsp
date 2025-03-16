<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="admintabs.html" %>
<title>Untitled Document</title>

<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>
</head>

<body>
<p align="center">
  <%@ include file="db.jsp" %> 
 Payment details</p>
<table width="1076" border="1" align="center">
  <tr bgcolor="#999999">
   
    <td width="162"><strong>Customer phone </strong></td>
    <td width="157"><strong>account</strong></td>
    
    <td width="167"><strong>Amount </strong></td>
   
    <td width="165"><strong>service man </strong></td>
  
    <td width="165"><strong>Date</strong></td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from payment");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#DFDFDF">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>"/></span></td>
  <td><span class="style3 style1"><%= rst.getString(5) %></span></td>
   
  
  </tr>
  </form>
  <% } %>
</table>



</body>
</html>
