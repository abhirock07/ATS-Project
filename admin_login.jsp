<%@page  %>


<html>
<head>
<link rel="stylesheet" href="menu_style.css" type="text/css" />
<link rel="stylesheet" href="Default.css" type="text/css" />
</head>
<script>
function validate()
{

if(document.login.t1.value=="" && document.login.t2.value=="")
 {
 document.getElementById("uname").innerHTML="Enter the Username !!";
 document.getElementById("upwd").innerHTML="Enter the Password !!!";
 document.login.t1.focus();
 return false;
 }
else if(document.login.t1.value=="")
{
 document.getElementById("uname").innerHTML="Enter the Username !!";
 document.login.t1.focus();
 return false;
}
else if(document.login.t2.value=="")
{
 document.getElementById("upwd").innerHTML="Enter the Password !!";
 document.login.t2.focus();
 return false;

}
return true;

}

function emptyuser()
{
if(document.login.t1.value=="")
{
 document.getElementById("uname").innerHTML="Enter the Username !!";
 document.login.t1.focus();
 return false;
}
else
{
 document.getElementById("uname").innerHTML="";
}
}
function emptypwd()
{
if(document.login.t2.value=="")
{
 document.getElementById("upwd").innerHTML="Enter the Password !!";
 document.login.t2.focus();
 return false;
}
else
{
 document.getElementById("upwd").innerHTML="";
}
}
</script>
<body bgcolor="salmon" style="background-image:url('images/bg1_cargo.jpg')" >
<form name="login" method="post" action="fetch.jsp">
<table border="5" width="100%" height="170">
<tr><td>
    <embed src="swf/main1.swf" width="100%" height="170">
        </td>
        </tr>
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
<table border="0" width="25%" align="right">
<tr><td>

<fieldset><legend><font color="teal">Admin Login</font></legend>
<table border="0" width="20%" align="right" font="Calibri">
<tr><td>Username</td><td><input type="text" name="t1" onBlur='return emptyuser();'></td></tr>
<tr><td></td><td><font color="red"><div id="uname"></div></font></td></tr>
<tr><td>Password</td><td><input type="password" name="t2" onBlur='return emptypwd();'></td></tr>
<tr><td></td><td><font color="red"><div id="upwd"></div></font></td></tr>
<tr><td><td align="right"><input value="Login" type="submit" onclick="return validate();"><input value="Reset" type="reset" name="reset"></td>
</table>
</fieldset></td></tr>
</table>
<br><br><br><br><br><br>

</form>
</body>
</html>
