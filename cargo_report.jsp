<%-- 
    Document   : cargo_report
    Created on : Mar 19, 2011, 6:43:23 PM
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
<body bgcolor="plum">
<table border="0" width="100%" height="170">
<tr><td><embed src="swf/main8.swf" width="100%" height="170"></td></tr>
</table>
<%
String query="SELECT * FROM air_cargo_service";
rs=st.executeQuery(query);
%>
<table border="4" cellspacing="2" cellpadding="2" align="center">
<tr>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Flight No</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Flight Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Goods Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Goods Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Source Place</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Destination Place</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Date OF Transfer</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Weight</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Price</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Cid</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Cname</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Emp id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Emp Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Process Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Process Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Delivery Date</font></th>

</tr>

<%
	while(rs.next())
	{
        int f1=rs.getInt("fno");
		String f2=rs.getString("fname");
		int f3=rs.getInt("gid");
		String f4=rs.getString("gname");
		String f5=rs.getString("splace");
		String f6=rs.getString("dplace");
		String f7=rs.getString("dot");
		String f8=rs.getString("wgt");
		String f9=rs.getString("price");
		int f10=rs.getInt("cid");
		String f11=rs.getString("cname");
		int f12=rs.getInt("empid");
		String f13=rs.getString("empname");
		int f14=rs.getInt("pid");
		String f15=rs.getString("pname");
        String f16=rs.getString("ddate");
%>

<tr>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f1 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f2 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f3 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f4 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f5 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f6 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f7 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f8 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f9 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f10 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f11 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f12 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f13 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f14 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f15 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f16 %></font></td>
</tr>

<%

	}
%>
</table>
<br><br>
<table border="0" align="center">
<tr>
	<td><input type="button" value="REFRESH" onClick="window.location.reload()"></td>
	<td><a href="reports.jsp"><input type="button" name="btnback" value="BACK"></a></td>
</tr>
</table>
</body>
</html>