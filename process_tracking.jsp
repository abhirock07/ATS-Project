<%-- 
    Document   : process_tracking
    Created on : Mar 19, 2011, 5:44:01 PM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
%>

<%

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
st=con.createStatement();
%>
<html>
<head>
<title>Process Tracking</title>
<script>
function getdata()
{
<%
String query="select * from flight_info";
rs=st.executeQuery(query);
    while(rs.next())
    {
			int f1=rs.getInt("fid");
			String f2=rs.getString("fname");
		%>
		if(document.getElementById("fid").value=="<%= f1 %>")
		{

			document.getElementById("txtfname").value="<%= f2 %>";
		}
	<%
	
		}
	%>
}

function getdata1()
{
	<%
		String query1="select eid,ename from emp_details";
		rs=st.executeQuery(query1);
		while(rs.next())
		{
			int f3=rs.getInt("eid");
			String f4=rs.getString("ename");
		%>
		if(document.getElementById("eid").value=="<%= f3 %>")
		{

			document.getElementById("txtename").value="<%= f4 %>";
		}
	<%
	
		}
	%>
}
function getdata2()
{
	<%
		String query3="select cid,cname from air_cargo_service";
		rs=st.executeQuery(query3);
        while(rs.next())
		{
			int f5=rs.getInt("cid");
			String f6=rs.getString("cname");
		%>
		if(document.getElementById("cid").value=="<%= f5 %>")
		{

			document.getElementById("txtcname").value="<%= f6 %>";
		}
	<%
			
		}
	%>
}

function validate()
{

if((document.frm1.txteid.value=="")||(document.frm1.txtename.value=="")||
	(document.frm1.txtfno.value=="")||(document.frm1.txtfname.value=="")||
	(document.frm1.txtcno.value=="")||(document.frm1.txtcname.value==""))
 {
 document.getElementById("uname").innerHTML="<blink>"+"You must fill every Field !!"+"</blink>";
 //document.getElementById("upwd").innerHTML="<blink>"+"Enter the Password !!!"+"</blink>";
 document.frm1.txteid.focus();
 return false;
 }
 return true;
}
</script>

<body bgcolor="blueviolet">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main6.swf" width="100%" height="170"></td></tr>
</table>
<br>
<form name="frm1" method="post" action="process_tracking_detail.jsp">
<table width="60%" border="0" align="center">

<tr>
    <td align="right">Emp Id :<select id="eid" name="eid" onChange="return getdata1();">
	<option>--select--</option>
	<%
		String query4="select eid from emp_details";
        rs=st.executeQuery(query4);
		while(rs.next())
		{
			int f7=rs.getInt("eid");
	%>
	<option value=<%= f7 %>><%= f7 %></option>
	<%
		
		}
	%></td></select>
    <td align="right">Emp Name :<input type="text" id="txtename" name="txtename" readonly></td>
</tr>


<tr>
    <td align="right">Flight No :<select id="fid" name="fid" onChange="return getdata();">
	<option>--select--</option>
	<%
		String query5="select fid from flight_info";
		rs=st.executeQuery(query5);
        while(rs.next())
		{
			int f8=rs.getInt("fid");
            %>
	<option value=<%= f8 %>><%= f8 %></option>
	<%
	
		}
	%></td></select>
    <td align="right">Flight Name :<input type="text" id="txtfname" name="txtfname" readonly></td>
</tr>

<tr>
    <td align="right">Cargo No :<select id="cid" name="cid" onChange="return getdata2();">
	<option>--select--</option>
	<%
		String query6="select cid from air_cargo_service";
		rs=st.executeQuery(query6);
		while(rs.next())
		{
			int f9=rs.getInt("cid");
	%>
	<option value=<%= f9 %>><%= f9 %></option>
	<%
	
		}
	%></td></select>
    <td align="right">Cargo Name :<input type="text" id="txtcname" name="txtcname" readonly></td>
</tr>

<tr><tr><td></td><td><font color="red"><div id="uname"></div></font></td></tr>
</table>


<br>
<table border="0" align="center">
<tr>
	<td><input type="submit" name="add" value="VIEW" onClick="return validate();"></td>
	<td><input type="reset" name="reset" value="RESET"></td>
	<td><a href="admin_form.jsp"><input type="button" name="back" value="BACK"></a></td>
</tr>
</table>
</form>
</body>
</html>