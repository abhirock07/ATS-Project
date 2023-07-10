<%-- 
    Document   : comment
    Created on : Mar 18, 2011, 12:04:32 PM
    Author     : cegonsoft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Contact Us</title>
<link rel="stylesheet" href="menu_style.css" type="text/css" />
</head>
<body bgcolor="lightblue">
<form name="frm" method="post" action="user_comments.jsp">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main8.swf" width="100%" height="170"></td></tr>
</table>
<ul id="menu">
	<li><a href="index.jsp" title="">Home</a></li>
	<li><a href="services.html" title="">Freight Services</a></li>
	<li><a href="request_quote.jsp" title="">Freight Quote</a></li>
    <li><a href="track_cargo.jsp" title="">Cargo Tracking</a></li>
	<li><a href="aboutus.html" title="" >About Us</a></li>
	<li><a href="comment.jsp" title="">Write Comment</a></li>
	
</li>
<br/>
<br/>
<br/>
<table width="420" border="0" cellspacing="5">
    <tr>
      <td width="100" valign="top">Phone:</td>
      <td width="320" valign="top">(+91)9036880161</td>
    </tr>
    <tr>
      <td width="100" valign="top">Name:</td>
      <td width="320" valign="top"><input class="inputbox" id="name" maxlength="255" name="name" size="43" type="text" /></td>
    </tr>
    <tr>
      <td width="100" valign="top">Email:</td>
      <td width="320" valign="top"><input class="inputbox" id="email" maxlength="255" name="email" size="43" type="text" /></td>
    </tr>
    <tr>
      <td width="100" valign="top">Subject: </td>
      <td width="320" valign="top"><input class="inputbox" id="subject" maxlength="255" name="subject" size="43" type="text" /></td>
    </tr>
    <tr>
      <td width="100" valign="top">Comments:</td>
      <td width="320" valign="top"><textarea class="inputbox" cols="53" id="comments" name="comments" rows="10"></textarea></td>
    </tr>
    <tr>
      <td width="100" valign="top"></td>
      <td width="320" height="25" valign="top"><div style="text-align:right;">
	  <input class="inputbox" id="send" name="send" type="submit" value="Send" /></div></td>
    </tr>
  </table>
  </form>
  </body>
  </html>
