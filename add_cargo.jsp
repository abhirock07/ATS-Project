<%-- 
    Document   : add_cargo
    Created on : Mar 19, 2011, 1:58:19 PM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
int flag=0;
String city;
%>
<%

  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
  st=con.createStatement();




%>


<html>
<head>
<title>Cargo Tracking</title>
<script>
function getdata()
{
	<%
		String query="select cid,cname,dot,ddate from air_cargo_service";
		rs=st.executeQuery(query);
		while(rs.next())
		{
			int f1=rs.getInt("cid");
			String f2=rs.getString("cname");
			String f3=rs.getString("dot");
			String f4=rs.getString("ddate");
		%>
		if(document.getElementById("cid").value=="<%= f1 %>")
		{

			document.getElementById("txtcname").value="<%= f2 %>";
			document.getElementById("txttdate").value="<%= f3 %>";
			document.getElementById("txtddate").value="<%= f4 %>";
		}
	<%
	
		}
	%>
}
function getdata1()
{
	<%
		String query2="select gid,gname from air_cargo_service";
		rs=st.executeQuery(query2);
		while(rs.next())
		{
            int f1=rs.getInt("gid");
            String f2=rs.getString("gname");
		%>
		if(document.getElementById("gid").value=="<%= f1 %>")
		{

			document.getElementById("txtgname").value="<%= f2 %>";
		}
	<%
	
		}
	%>
}
function validate()
{

if((document.frm1.cid.value=="")||(document.frm1.txtcname.value=="")||
	(document.frm1.gid.value=="")||(document.frm1.txtgname.value=="")||
	(document.frm1.src.value=="")||(document.frm1.dest.value=="")||
	(document.frm1.txtweight.value=="")||(document.frm1.txtprice.value=="")||
	(document.frm1.status.value==""))
{
	document.getElementById("uname").innerHTML="<blink>"+"You must fill every field !!"+"</blink>";
	document.frm1.txtcname.focus();
	return false;
}
else
{
	return true;
}

}

</script>
</head>
<body bgcolor="lightblue">

<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main8.swf" width="100%" height="170"></td></tr>
</table>

<br>

<form name="frm1" method="post" action="insert_cargo_tracking.jsp">
<table width="50%" border="0" align="center">

<tr>
    <td align="right">Cargo Id :<select id="cid" name="cid" onChange="return getdata();">
	<option value="select" default>select</option>
	<%
		String query3="select cid from air_cargo_service";
        rs=st.executeQuery(query3);
		while(rs.next())
		{
			int f1=rs.getInt("cid");
	%>
	<option value=<%= f1 %>><%= f1 %></option>
	<%
		
		}
	%></td></select>
    <td align="right">Cargo Name :<input type="text" id="txtcname" name="txtcname" readonly></td>
</tr>

<tr>
    <td align="right">Goods Id :<select id="gid" name="gid" onChange="return getdata1();">
	<option value="select" default>select</option>
	<%
		String query4="select gid from air_cargo_service";
		rs=st.executeQuery(query4);
		while(rs.next())
		{
			int f2=rs.getInt("gid");
	%>
	<option value=<%= f2 %>><%= f2 %></option>
	<%
	
		}
	%></td></select>
    <td align="right">Goods Name :<input type="text" id="txtgname" name="txtgname" readonly></td>
</tr>

<tr>
    <td align="right">Source Place :<select id="src" name="src">
	<option value="select">select</option>
	<%
		String query5="select name from city_info";
        rs=st.executeQuery(query5);
		while(rs.next())
		{
			String city=rs.getString("name");
	%>
	<option value=<%= city %>><%= city %></option>
	<%
	
		}
	%></td></select>
    <td align="right">Destination Place :<select id="dest" name="dest">
	<option value="select">select</option>
	<%
		String query6="select name from city_info";
		rs=st.executeQuery(query6);
		while(rs.next())
		{
			String dcity=rs.getString("name");
	%>
	<option value=<%= dcity %>><%= dcity %></option>
	<%
	
		}
	%></td></select>
</tr>

<tr>
    <td align="right">Weight :<input type="text" name="txtweight"><font color="red"></font></td>
    <td align="right">Price :<input type="text" name="txtprice"><font color="red"></font></td>
</tr>

<tr>
    <td align="right">Transfer Date :<input type="text" id="txttdate" name="txttdate"><font color="red"></font></td>
    <td align="right">Delivery Date :<input type="text" id="txtddate" name="txtddate"><font color="red"></font></td>
</tr>
<tr>
	<td><td align="right">Current Status :<select id="status" name="status">
	<option>Pending</option>
	<option>Received</option></select>
	</td>

<tr><tr><td></td><td><font color="red"><div id="uname"></div></font></td></tr>

</table>
<br>

<table border="0" align="center">
<tr>
	<td><input type="submit" value="SAVE" onClick="return validate();"></td>
	<td><input type="reset" name="reset" value="RESET"></td>
	<td><a href="cargo_tracking.jsp"><input type="button" name="back" value="BACK"></a></td>
</tr>
</table>
</form>
</body>
</html>
