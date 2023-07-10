<%-- 
    Document   : changepassword
    Created on : Mar 19, 2011, 8:06:33 PM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
</head>
<body bgcolor="blueviolet">
<form name="frm1" method="post" action="change_password_detail.jsp">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main8.swf" width="100%" height="170"></td></tr>
</table>
<table border="0" width="25%" align="center">
<tr><td align="right">User Id :<input type="text" name="txtuid" id="txtuid"></td></tr>
<tr><td align="right">Old Password :<input type="password" name="txtoldpwd" id="txtoldpwd"></td></tr>
<tr><td align="right">New Password :<input type="password" name="txtnewpwd" id="txtnewpwd"></td></tr>
<tr><td align="right">Confirm Password :<input type="password" name="txtconfirmpwd" id="txtconfirmpwd"></td></tr>
<tr><td align="right"><input type="submit" value="Change Password"><input type="reset" value="Reset"><a href="emp_form.jsp"><input type="button" name="back" value="BACK"></td></tr>

</table>
</form>
</body>
</html>