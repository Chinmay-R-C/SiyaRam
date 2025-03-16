<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="usertabs.html" %>
<title>Untitled Document</title>

</head>

<body>
<p align="center">
  <%@ include file="db.jsp" %> 
  My Booking details</p>
<table width="auto" border="1" align="center">
  <tr bgcolor="#999999">
    
    <td ><strong>Service Provider name </strong></td>
    <td><strong>Category</strong></td>
    
    
   
    <td ><strong>SID</strong></td>

	<td ><strong>Customer phone</strong></td>
	<td ><strong>Booking date</strong></td>
		<td ><strong>Booking ID</strong></td>
   
  </tr>
  
  <% 
  String sid=(String)session.getAttribute("semail");
  rst=stmt.executeQuery("select * from booking where sid='"+sid+"'");
  while(rst.next()){
  
   %>
  
  <form action="" method="post">
  <tr bgcolor="#003399">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>" readonly="true"/></span></td>
    <td><span class="style3 style1">
    <textarea name="e2" readonly="true"><%= rst.getString(2) %></textarea>
    </span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>" readonly="true"/></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>" readonly="true"/></span></td>
    <td><span class="style3 style1"><input name="e5" type="text"  value="<%= rst.getString(5) %>" readonly="true"/></span></td>
	 <td><span class="style3 style1"><input name="e6" type="text"  value="<%= rst.getString(6) %>" readonly="true"/></span></td>
	
   
  
  </tr>
  </form>
  <% } %>
</table>


<% 
if(request.getParameter("update")!=null){
try{

String s3=request.getParameter("e6");



int x=stmt.executeUpdate("delete from booking where bid='"+s3+"' ");
if(x!=0)
{
%>
<script>
alert("booking canceled successfully");
window.open("mybookings.jsp", "_self");
</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}




if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from services where id='"+request.getParameter("e5")+"' ");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("viewServices.jsp", "_self");

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
