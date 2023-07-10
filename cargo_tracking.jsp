<%-- 
    Document   : cargo_tracking
    Created on : Mar 19, 2011, 1:44:42 PM
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
<body bgcolor="dodgerblue">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main5.swf" width="100%" height="170"></td></tr>
</table>

<%
String query="SELECT * FROM cargo_tracking";
rs=st.executeQuery(query);
%>
<table border="1" cellspacing="2" cellpadding="2" align="center">
<tr>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Cargo Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Cargo Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Goods Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Goods Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Source Place</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Destination Place</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Transfer Date</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Delivery Date</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Weight</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Price</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Current Status</font></th>

</tr>

<%
	
	while(rs.next())
	{
		int f1=rs.getInt("cid");
		String f2=rs.getString("cname");
		String  f3=rs.getString("gid");
		String f4=rs.getString("gname");
		String  f5=rs.getString("splace");
		String f6=rs.getString("dplace");
        String f10=rs.getString("tdate");
		String f11=rs.getString("ddate");
		int f7=rs.getInt("weight");
		String f8=rs.getString("price");
		String f9=rs.getString("status");
		
%>

<tr>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f1 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f2 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f3 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f4 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f5 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f6 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f10 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f11 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f7 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f8 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f9 %></font></td>

</tr>

<%
	}
%>
</table>
<br><br>
<table border="0" align="center">
<tr>
	<td><a href="add_cargo.jsp"><input type="button" name="btnadd" value="ADD"></a></td>
	<td><a href="admin_form.jsp"><input type="button" name="back" value="BACK"></a></td>
</tr>
</table>
</body>
</html>
