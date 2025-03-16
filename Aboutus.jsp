<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@  include file="hometabs.html" %>
<%@  include file="db.jsp" %>
<style>

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
.card1 {  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}
.card2 {  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}
</style>
</head>
<body>

<div class="about-section">
  <h1>About Us Unity Hub Services </h1>
  <p>With Unity Hub, users can create accounts and personalize their profiles, enabling them to access a vast directory of service providers across various categories. They can browse through the listings, read detailed descriptions, view contact information, and explore service provider ratings and reviews. The platform facilitates direct communication between users and service providers, allowing them to discuss their specific needs, negotiate terms, and make arrangements conveniently.</p>
  
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <span class="card1"><img src="images/jnana1.jpeg" alt="Jnaneshwari D" style="width:45%" /></span>
      <div>JNANESHARI D </div>
  </div>
  </div>
  <div class"row">
  <div class="column">
    <div class="card">
      <img src="images/manoj1.jpeg" alt="Manoj Kumar" style="width:45%">    
    </div>
	 <div>MANOJ KUMAR</div>
  </div>
  <div class"row">
  <div class="column">
    <div class="card">
      <img src="images/anu1.jpeg" alt="Anusha K E" style="width:45%">    
    </div>
	 <div>ANUSHA K E </div>
  </div>
  <div class"row">
  <div class="column">
    <div class="card">
      <img src="images/darshu1.jpeg" alt="Darshan M" style="width:45%">    
    </div>
	 <div>DARSHAN M </div>
  </div>
  <div class"row">
   <div class="column">
    <div class="card">
      <img src="images/chinu1.jpeg" alt="Chinmay R C" style="width:45%">
    </div>
	 <div>CHINMAY R C </div>
  </div>
  
</div>

</body>
</html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
</body>
</html>
