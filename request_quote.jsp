<%-- 
    Document   : request_quote
    Created on : Mar 18, 2011, 12:00:40 PM
    Author     : Amc College
	
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="menu_style.css" />
	<link rel="stylesheet" type="text/css" href="Default.css" />	
	
<title>Freight Request</title>
<script>
function validate()
{
	if(document.frm1.txtsemail.value=="")
	{
		alert("Invalid Email Address");
		document.frm1.txtsemail.focus();
		return false;
	}
	else
	{
		alert("Your Request has been sent Successfully !!!");
		return true;
	}
}
function numcheck()
{
	if((document.frm1.txtscell.value.length<10) || (document.frm1.txtscell.value.length>10))
	{
		alert("Invalid Cell Number !!!");
		document.frm1.txtscell.select();
		return false;
	}
	if(isNaN(document.frm1.txtscell.value))
	{
		alert("Invalid Cell Number !!!");
		document.frm1.txtscell.value="";
		document.frm1.txtscell.focus();
		return false;
	}

}

function numcheck1()
{
	if(document.frm1.txtccell.value.length<10 || document.frm1.txtccell.value.length>10)
	{
		alert("Invalid Cell Number !!!");
		document.getElementById('txtccell').focus();
		return false;
	}
	if(isNaN(document.frm1.txtccell.value))
	{
		alert("Invalid Cell Number !!!");
		document.getElementById('txtccell').focus();
		return false;
	}

}
function numcheck2()
{
	if(document.frm1.txtscontact.value.length<10 || document.frm1.txtscontact.value.length>10)
	{
		alert("Invalid Cell Number !!!");
		document.getElementById('txtscontact').focus();
		return false;
	}
	if(isNaN(document.frm1.txtscontact.value))
	{
		alert("Invalid Cell Number !!!");
		document.getElementById('txtscontact').focus();
		return false;
	}

}
function zipcheck()
{
	if((document.frm1.txtszip.value.length<6) || (document.frm1.txtszip.value.length>6))
	{
		alert("Invalid Zipcode!!! It must be 6 Number...");
		document.frm1.txtszip.focus();
		return false;
	}
	if(isNaN(document.frm1.txtszip.value))
	{
		alert("Invalid Zipcode!!! Characters Not Allowed Here...");
		document.frm1.txtszip.focus();
		return false;
	}

}
function zipcheck1()
{
	if((document.frm1.txtczip.value.length<6) || (document.frm1.txtczip.value.length>6))
	{
		alert("Invalid Zipcode!!! It must be 6 Number...");
		document.frm1.txtczip.select();
		return false;
	}
	if(isNaN(document.frm1.txtczip.value))
	{
		alert("Invalid Zipcode!!! Characters Not Allowed Here...");
		document.frm1.txtczip.select();
		return false;
	}

}
function alphacheck()
{
	if((document.frm1.txtsname.value.length<3) || (document.frm1.txtsname.value.length>30))
	{
		alert("Your Name Must Be More Than Two Words !!!");
		document.frm1.txtsname.focus();
		return false;
	}

}

function echeck(str)
{

	var at="@";
	var dot=".";
	var lat=str.indexOf(at);
	var lstr=str.length;
	var ldot=str.indexOf(dot);
	if (str.indexOf(at)==-1)
	{
	   alert("Invalid E-mail ID");
	   return false;
	}
	if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr)
	{
	   alert("Invalid E-mail ID");
	   return false;
	}
	if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr)
	{
	    alert("Invalid E-mail ID");
	    return false;
	}
	if (str.indexOf(at,(lat+1))!=-1)
	{
	    alert("Invalid E-mail ID");
	    return false;
	}
	if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot)
	{
		alert("Invalid E-mail ID");
		return false;
	}
	if (str.indexOf(dot,(lat+2))==-1)
	{
	    alert("Invalid E-mail ID");
	    return false;
	}
	if (str.indexOf(" ")!=-1)
	{
		alert("Invalid E-mail ID");
		return false;
	}
	return true;
}

function ValidateForm()
{
	var emailID=document.frm1.txtsemail;
	if((emailID.value==null)||(emailID.value==""))
	{
		alert("Please Enter your Email ID");
		emailID.focus();
		return false;
	}
	if(echeck(emailID.value)==false)
	{
		emailID.value="";
		emailID.focus();
		return false;
	}
	return true;
}
function isAlpha ( evt )
{
	var keyCode = evt.which ? evt.which : evt.keyCode;
	alpha = ( keyCode >= 'a'.charCodeAt ( ) && keyCode <= 'z'.charCodeAt ( ) ) ||
      ( keyCode >= 'A'.charCodeAt ( ) && keyCode <= 'Z'.charCodeAt ( ) ) ||
      ( keyCode >= 8 && keyCode <= 46 );
	return ( alpha );
}

function validateAlpha( text )
{
	for(c=0;c<text.length;c++)
	{
		alpha=(text.charCodeAt(c)>=65 && text.charCodeAt ( c ) <=90 ) ||
         ( text.charCodeAt ( c ) >= 97 &&
         text.charCodeAt ( c ) <=122 )
      if ( !alpha ) {
         alert ( 'No way, sorry.' );
         document.frm1.txtsname.select( );
         return false;
      }
   }
   return true;
}


</script>

</head>
<body bgcolor="lightblue">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main5.swf" width="100%" height="170"></td></tr>
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

<br>
<form name="frm1" method="post" action="insert_userquote.jsp">
<table width="70%" border="5" align="center">
<tr>
    <td align="right">Shipper's Name :<input type="text" id="txtsname" name="txtsname" onkeydown="
   if( !isAlpha( event ) ) {
      alert ('Oops! letters only please.' );
      return false;
   }"></td>
    <td align="right">Consignee Name:<input type="text" id="txtcname" name="txtcname"></td>
</tr>

<tr>
    <td align="right">Shipper's Contact :<input type="text" id="txtscontact" name="txtscontact" onChange="return numcheck2()"></td>
    <td align="right">Consignee's Contact :<input type="text" id="txtccontact" name="txtccontact"></td>
</tr>

<tr>
    <td align="right">Shipper's Address :<input type="text" id="txtsaddr" name="txtsaddr"></td>
    <td align="right">Consignee's Address :<input type="text" id="txtcaddr" name="txtcaddr"></td>
</tr>

<tr>
    <td align="right">Shipper's City :<input type="text" name="src">
	</td>
    <td align="right">Consignee's City :<input type="text" name="dest">
		</td>
</tr>

<tr>
    <td align="right">Shipper's Zipcode :<input type="text" id="txtszip" name="txtszip" onChange="return zipcheck()"></td>
    <td align="right">Consignee's Zipcode :<input type="text" id="txtczip" name="txtczip" onChange="return zipcheck1()"></td>
</tr>

<tr>
    <td align="right">Shipper's Cell Number(+91):<input type="text" id="txtscell" name="txtscell" onChange="return numcheck()"></td>
    <td align="right">Consignee's Cell Number(+91) :<input type="text" id="txtccell" name="txtccell" onChange="return numcheck1()"></td>
</tr>

<tr>
    <td align="right">Shipper's Fax Number :<input type="text" id="txtsfax" name="txtsfax"></td>
    <td align="right">Consignee's Fax Number :<input type="text" id="txtcfax" name="txtcfax"></td>
</tr>

<tr>
    <td align="right">Shipper's Email :<font color="red">*</font><input type="text" id="txtsemail" name="txtsemail" onChange="return ValidateForm()"></td>
    <td align="right">Consignee's Email :<input type="text" id="txtcemail" name="txtcemail"></td>
</tr>

<tr>
    <td align="right">Pickup Date :<input type="text" id="txtpdate" name="txtpdate"></td>
	<td align="right">Total Weight(in Kg) :<input type="text" id="txtweight" name="txtweight"></td>
</tr>

</table>
<br>
<table border="0" align="center">
<tr>
	<td><input type="submit" value="SAVE" onClick="return validate();"></td>
	<td><input type="reset" name="reset" value="RESET"></td>
	<td><a href="index.jsp"><input type="button" name="back" value="BACK"></a></td>
	
</tr>
</table>
</form>
</body>
</html>