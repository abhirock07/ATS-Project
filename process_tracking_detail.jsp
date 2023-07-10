<%-- 
    Document   : process_tracking_detail
    Created on : Mar 19, 2011, 6:11:53 PM
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
<body bgcolor="cyan">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main7.swf" width="100%" height="170"></td></tr>
</table>
<%
int f1=Integer.parseInt(request.getParameter("eid"));
int f2=Integer.parseInt(request.getParameter("fid"));
int f3=Integer.parseInt(request.getParameter("cid"));
String query="SELECT fno,fname,splace,dplace,cid,cname,empid,empname,pid,pname FROM air_cargo_service where empid='"+f1+"' or fno='"+f2+"' or cid='"+f3+"'";
rs=st.executeQuery(query);
%>
<table border="1" cellspacing="2" cellpadding="2" align="center">
<tr>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Flight No</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Flight Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">splace</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">dplace</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Cargo Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Cargo Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Emp Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Emp Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Process Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Process Name</font></th>
</tr>

<%

	while(rs.next())
	{
		int f11=rs.getInt("fno");
		String f12=rs.getString("fname");
		String f13=rs.getString("splace");
        String f4=rs.getString("dplace");
		int f5=rs.getInt("cid");
		String f6=rs.getString("cname");
		int f7=rs.getInt("empid");
        String f8=rs.getString("empname");
		int f9=rs.getInt("pid");
		String f10=rs.getString("pname");
%>

<tr>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f11 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f12 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f13 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f4 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f5 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f6 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f7 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f8 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f9 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f10 %></font></td>
</tr>

<%

	}
%>
</table>
<br><br>
<table border="0" align="center">
<tr>
	<td><a href="process_tracking.jsp"><input type="button" name="back" value="BACK"></a></td>
</tr>
</table>
</body>
</html>