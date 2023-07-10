<%-- 
    Document   : air_cargo
    Created on : Mar 13, 2011, 1:34:40 PM
    Author     : cegonsoft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
if(request.getParameter("b1")=="b1")
    {
    %>
    hai
    <%}
%>

<html>
<head>
   
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="menu_style.css" type="text/css" />
</head>
<body>
    <form name="" method="post">
<table border="0" width="75%" height="120" align="center">
<tr><td><img src="banner/1.jpg" width="100%" height="120"></td></tr>
</table>
<br>
<ul id="menu">
	<li><a href="#" title="">Home</a></li>
	<li><a href="#" title="" >About Us</a></li>
	<li><a href="#" title="">Contact Us</a></li>
    <li><a href="index.jsp">Logout</a></li>
    </ul>

<body>
<table border="0" width="70%" align="center" height="200">
<tr><td align="right"><font face="verdana" size="3" color="navy">Fligh No :</td><td><input type="text" name="fno" value=""></td>
	<td align="right"><font face="verdana" size="3" color="navy">Fligh Name :</td><td><input type="text" name="fname" value=""></td></tr>
<tr><td align="right"><font face="verdana" size="3" color="navy">Goods Id :</td><td><input type="text" name="gid" value=""></td>
	<td align="right"><font face="verdana" size="3" color="navy">Goods Name :</td><td><input type="text" name="gname" value=""></td></tr>
<tr><td align="right"><font face="verdana" size="3" color="navy">Leaving From :</td><td><input type="text" name="splace" value=""></td>
	<td align="right"><font face="verdana" size="3" color="navy">Going To :</td><td><input type="text" name="dplace" value=""></td></tr>
	<td align="right"><font face="verdana" size="3" color="navy">Weight :</td><td><input type="text" name="weight" value=""></td></tr>
<tr><td align="right"><font face="verdana" size="3" color="navy">Price :</td><td><input type="text" name="price" value=""></td></tr>
</table>
<br>
<table align="center" border="0" width="40%">
<tr>
	<td align="center">
        <a href="addcargo.jsp"> <img src="button/add.jpeg" width="80%" height="50"></a></td>
    <td align="center">
        <img src="button/update.jpeg" width="80%" height="50"></td>
    <td align="center"><img src="button/clear.jpeg" width="80%" height="50"></td>
    
    <td align="center"><img src="button/reset.jpeg" width="80%" height="50"></td>
</tr>
</table>
    </form>
</body>
<html>
