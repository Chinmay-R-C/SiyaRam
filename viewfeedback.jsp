<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="admintabs.html" %>
<title>Untitled Document</title>
<style type="text/css">
<!--
body {

}
.style5 {
	font-size: 24px;
	font-weight: bold;
	color: #000066;
}
.style6 {color: black}
.style10 {font-size: 18px; font-weight: bold; color:#000033; }
.style11 {
	color: #000033;
	font-weight: bold;
}
-->
</style></head>

<body>

<p align="center">

  <%@ include file="db.jsp"  %>
  <% 




rst=stmt.executeQuery("select * from feedback ");
%> 
</p>
<p align="center"><span class="style5">FeedBacks</span></p>
<table width="420" border="1" align="center" bgcolor="#CCCCCC">
  <tr bgcolor="#FFFFFF">
   
    <td width="246"><span class="style10">Feed Back </span></td>
	 <td width="246"><span class="style11">Service Provider</span></td>
  </tr>
 <%
						while(rst.next()){
						%>
					<form action="" method="post" >	
					<input name="f1" type="hidden" value="<%= rst.getString(1) %>" />
							 <tr>
    <td><span class="style6">
      <% out.print(rst.getString(1)); %>
    </span></td>
   
	
	<td><span class="style6">
	  <% out.print(rst.getString(2)); %>
	</span></td>
  </tr>
  </form>
  <%
  }
  %>
</table>
 <%						

if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from feedback where feed='"+request.getParameter("f1")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("viewfeedback.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>


</body>
</html>
