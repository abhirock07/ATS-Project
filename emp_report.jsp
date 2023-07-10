<%-- 
    Document   : emp_report
    Created on : Mar 19, 2011, 6:55:28 PM
    Author     : cegonsoft
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
String query="SELECT * FROM emp_details";
rs=st.executeQuery(query);
%>
<table border="1" cellspacing="2" cellpadding="2" align="center">
<tr>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Emp Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Emp Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Password</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Gender</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Contact</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Address</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Qualification</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Designation</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">DOB</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">DOJ</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Experience</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Salary</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Cell No</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Email Id</font></th>

</tr>

<%
	while(rs.next())
	{
		int f1=rs.getInt("eid");
		String f2=rs.getString("ename");
		String f3=rs.getString("password");
		String f4=rs.getString("gender");
		String f5=rs.getString("contact");
		String f6=rs.getString("address");
		String f7=rs.getString("qualification");
		String f8=rs.getString("designation");
		String f9=rs.getString("dob");
		String f10=rs.getString("doj");
		int f11=rs.getInt("exp");
		String f12=rs.getString("salary");
		String f13=rs.getString("cellno");
		String f14=rs.getString("email");


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
	<td><a href="reports.jsp"<input type="button" name="btnback" value="BACK"></td>
</tr>
</table>
</body>
</html>