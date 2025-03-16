<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="admintabs.html" %>
<title>Untitled Document</title>
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>

<body>
<p align="center">
  <%@ include file="db.jsp" %> 
  Services details</p>
  <div style="overflow-x:auto;">
<table border="1" align="center">
  <tr bgcolor="#999999">
    
    <td width="215" ><strong>Service Provider name </strong></td>
    <td width="215"><strong>Description</strong></td>
    
    
   
    <td width="65" ><strong>price</strong></td>

	<td width="143" ><strong>Category</strong></td>
	<td width="174" ><strong>Email_id</strong></td>
	<td width="168" ><strong>password</strong></td>
		<td width="50" ><strong>ID</strong></td>
    <td width="235">&nbsp;</td>
  </tr>
  
  <% 
  String cid=(String)session.getAttribute("cid");
  rst=stmt.executeQuery("select * from services ");
  while(rst.next()){
  
   %>
  
  <form action="" method="post">
  <tr bgcolor="#DFDFDF">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>" readonly="true"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>" size="5"/></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>" size="15"/></span></td>
	 <td><span class="style3 style1"><input name="e5" type="text" value="<%= rst.getString(5) %>"/></span></td>
	  <td><span class="style3 style1"><input name="e6" type="text" value="<%= rst.getString(6) %>"/></span></td>
    <td><span class="style3 style1"><input name="e7" type="text"  value="<%= rst.getString(7) %>" size="5" readonly="true"/>
    </span></td>
	
   
    <td><input name="update" type="submit" id="update" value="Update" />
      <input type="submit" name="delete" value="Delete" /></td>
  </tr>
  </form>
  <% } %>
</table>
</div>

<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update services set name='"+request.getParameter("e1")+"',description='"+request.getParameter("e2")+"',price='"+request.getParameter("e3")+"', category='"+request.getParameter("e4")+"',username='"+request.getParameter("e5")+"',password='"+request.getParameter("e6")+"' where  id='"+request.getParameter("e7")+"' ");
if(x!=0)
{
%>
<script>
alert("Date Updated");
window.open("viewServices.jsp", "_self");
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
int x=stmt.executeUpdate("delete from services where id='"+request.getParameter("e7")+"' ");
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
