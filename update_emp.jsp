<%-- 
    Document   : update_emp
    Created on : Mar 19, 2011, 9:43:01 AM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%!
Connection con;
Statement st;
PreparedStatement pst;
ResultSet rs;
%>

<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
st=con.createStatement();
%>
<html>
<head></head>
<body>
<body bgcolor="lightblue">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main8.swf" width="100%" height="170"></td></tr>
</table>
<form action="update_empdetail.jsp" method="post">
<p align="center">Enter Employee Id :
<select name="roll">
<%
String query="select eid from emp_details";
rs=st.executeQuery(query);
while(rs.next())
{
		int eid=rs.getInt("eid");
%>
	<option value=<%= eid %>><%= eid %></option>
<%
}
}
catch(Exception e)
{
    out.println(e.getMessage());
}
%>
</select>
<input type="submit" value="Getdata">
</form>
</body>
</html>
