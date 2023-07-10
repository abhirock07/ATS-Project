<%-- 
    Document   : flight_allocation
    Created on : Mar 19, 2011, 7:13:38 PM
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
<title>Flight Allocation</title>
<script language="JavaScript">
function getdata()
{
	<%
		String query="select fid,fname from flight_info";
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
		String query1="select pilotid,pilotname from pilot_info";
        rs=st.executeQuery(query1);
		while(rs.next())
		{
			int f4=rs.getInt("pilotid");
			String f5=rs.getString("pilotname");
		%>
		if(document.getElementById("pilotid").value=="<%= f4 %>")
		{

			document.getElementById("pname").value="<%= f5 %>";
		}
	<%
	
		}
	%>
}
function getdata2()
{
	<%
		String query2="select eid,ename from emp_details";
	    rs=st.executeQuery(query2);
		while(rs.next())
		{
			int f6=rs.getInt("eid");
			String f7=rs.getString("ename");
		%>
		if(document.getElementById("eid").value=="<%= f6 %>")
		{

			document.getElementById("txtename").value="<%= f7 %>";
		}
	<%
	
		}
	%>
}
function getdata3()
{
	<%
		String query3="select pid,pname from air_cargo_service";
		rs=st.executeQuery(query3);
		
		while(rs.next())
		{
			int f8=rs.getInt("pid");
			String f9=rs.getString("pname");
		%>
		if(document.getElementById("pid").value=="<%= f8 %>")
		{

			document.getElementById("txtpname").value="<%= f9 %>";
		}
	<%
	
		}
	%>
}
function validate()
{

if((document.frm1.txtfno.value=="")||(document.frm1.txtfname.value=="")||
	(document.frm1.txtpid.value=="")||(document.frm1.txtpname.value=="")||
	(document.frm1.txtsrc.value=="")||(document.frm1.txtdest.value==""))
 {
 document.getElementById("uname").innerHTML="<blink>"+"You must fill every Field !!"+"</blink>";
 //document.getElementById("upwd").innerHTML="<blink>"+"Enter the Password !!!"+"</blink>";
 document.frm1.txtfno.focus();
 return false;
 }
 return true;
}
</script>

<body bgcolor="plum">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main5.swf" width="100%" height="170"></td></tr>
</table>
<br>
<form name="frm1" method="post" action="insert_flight_allocation.jsp">
<table width="60%" border="0" align="center">
<tr>
    <td align="right">Emp Id :<select id="eid" name="eid" onChange="return getdata2();">
	<option>-select-</option>
	<%
		String query4="select eid from emp_details";
        rs=st.executeQuery(query4);
		while(rs.next())
		{
			int f10=rs.getInt("eid");
	%>
	<option value=<%= f10 %>><%= f10 %></option>
	<%
	
		}
	%></td></select>
    <td align="right">Emp Name :<input type="text" id="txtename" name="txtename"></td>
</tr>
<tr>
    <td align="right">Flight No :<select id="fid" name="fid" onChange="return getdata();">
	<option>-select-</option>
	<%
		String query5="select fid from flight_info";
		rs=st.executeQuery(query5);
		while(rs.next())
		{
			int f11=rs.getInt("fid");
	%>
	<option value=<%= f11 %>><%= f11 %></option>
	<%
	
		}
	%></td></select>
    <td align="right">Flight Name :<input type="text" id="txtfname" name="txtfname"></td>
</tr>
<tr>
    <td align="right">Process Id :<select id="pid" name="pid" onChange="return getdata3();">
	<option>-select-</option>
	<%
		String query6="select pid from air_cargo_service";
		rs=st.executeQuery(query6);
		while(rs.next())
		{
			int f12=rs.getInt("pid");
	%>
	<option value=<%= f12  %>><%= f12 %></option>
	<%
	
		}
	%></td></select>
    <td align="right">Process Name :<input type="text" id="txtpname" name="txtpname"></td>
</tr>

<tr>
    <td align="right">Pilot Id :<select id="pilotid" name="pilotid" onChange="return getdata1();">
	<option>-select-</option>
	<%
		String query7="select pilotid from pilot_info";
		rs=st.executeQuery(query7);
		while(rs.next())
		{
			int f13=rs.getInt("pilotid");
	%>
	<option value=<%= f13 %>><%= f13 %></option>
	<%
	
		}
	%></td></select>
    <td align="right">Pilot Name :<input type="text" id="pname" name="pname"></td>
</tr>

<tr>
    <td align="right">Source :<select id="dest" name="dest">
	<option>-select-</option>
	<%
		String query8="select name from city_info";
        rs=st.executeQuery(query8);
		while(rs.next())
		{
			String city=rs.getString("name");
	%>
	<option value=<%= city %>><%= city %></option>
	<%
	
		}
	%></td></select>
    <td align="right">Destination :<select id="src" name="src">
	<option>-select-</option>
	<%
		String query9="select name from city_info";
        rs=st.executeQuery(query8);
		while(rs.next())
		{
			String dcity=rs.getString("name");
	%>
	<option value=<%= dcity %>><%= dcity %></option>
	<%
	
		}
	%></td></select>
</tr>

<tr><tr><td></td><td><font color="red"><div id="uname"></div></font></td></tr>
</table>


<br>
<table border="0" align="center">
<tr>
	<td><input type="submit" name="add" value="SUBMIT" onClick="return validate();"></td>
	<td><input type="reset" name="reset" value="RESET"></td>
	<td><a href="emp_form.jsp"><input type="button" name="back" value="BACK"></a></td>
</tr>
</table>
</form>
</body>
</html>
