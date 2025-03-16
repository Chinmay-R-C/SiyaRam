<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="customertabs.html" %>
<%@ include file="db.jsp" %>
<title>Untitled Document</title>
<style type="text/css">
<!--
<style>


.style1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 36px;
}

-->
</style>
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

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: 100%;
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
  margin-left:30%;
  margin-right:30%;
}
.style1 {color: #000000}
</style>

</head>

<body>
<br />
<br />
<br />
<br />



<div class="logindiv">
<h3 align="center" style="color:black">Make Payment</h3>
  <form action="" method="post">
    <label for="fname" style="color:black"> Customer Number </label>
    <input type="text"  name="r1" placeholder="  name" value="<%= session.getAttribute("cid") %>" readonly="" required>
	
	 <label for="fname" style="color:black">  Acco Number </label>
	 <br />

     <input name="r2" type="text" value="" size="30" pattern="[0-9]{15}" title=" 15 digit mobile  number"   required/>
	 <label for="fname" style="color:black"> <br />
	 Amount</label>
	 <input type="text"  name="r3" placeholder="Amount" value=""  required>
	<label for="fname"></label>
	
	 
	 <label for="fname" style="color:black"> <br />
	 Service Proider </label>
	
	 <label for="fname"></label>
	

   
  
     <select name="r4">
	 <% 
	 rst=stmt.executeQuery("select username from services");
	 while(rst.next()){
	  %>
	 <option><%= rst.getString(1) %></option>
	 <% } %>
     </select>
     <input type="submit" name="Submit" value="make payment">
	
  </form>
</div>



<p>
  <% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("r1");
String s2=request.getParameter("r2");
String s3=request.getParameter("r3");
String s4=request.getParameter("r4");



try{
int x=stmt.executeUpdate("insert into payment(customernumber,accountno,amount,servicer) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
if(x!=0){
//------------------------------------------------------------------------------
//------------------------email------------------

%>
    <script>

alert("payment Done Successfully");
  </script>
  <%
}

}catch(Exception e){
out.print(e);
%>
    <script>

alert("Exception found");
  </script>
  <%
}
}
 %>
</p>
<p align="center">&nbsp;</p>
</body>
</html>
