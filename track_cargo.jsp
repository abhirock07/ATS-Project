<%-- 
    Document   : track_cargo
    Created on : Mar 18, 2011, 12:10:38 PM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="menu_style.css" />
	<link rel="stylesheet" type="text/css" href="Default.css" />
</head>
<body>
<body bgcolor="lightblue">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main6.swf" width="100%" height="170"></td></tr>
</table>
<ul id="menu">
	<li><a href="index.jsp" title="">Home</a></li>
	<li><a href="services.html" title="">Freight Services</a></li>
	<li><a href="request_quote.jsp" title="">Freight Quote</a></li>
    <li><a href="track_cargo.jsp" title="">Cargo Tracking</a></li>
	<li><a href="aboutus.html" title="" >About Us</a></li>
	<li><a href="comment.jsp" title="">Write Comment</a></li>
	
</li>
<br/><br/><br/>

<form action="track_cargo1.jsp" method="post">
<p align="center">Enter Cargo Number :
<input type="text" name="txtcno">
<input type="submit" value="Getdata">
</form>
</body>
</html>