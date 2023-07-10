<%-- 
    Document   : user_quotes
    Created on : Mar 19, 2011, 6:32:49 PM
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
<body bgcolor="blue">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main7.swf" width="100%" height="170"></td></tr>
</table>
<%
	
	String query="SELECT * FROM user_comment";
    rs=st.executeQuery(query);
%>
<table border="4" cellspacing="2" cellpadding="2" align="center">
<tr>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Email</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Subject</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Comments</font></th>
</tr>

<%

	while(rs.next())
	{
        String f1=rs.getString("name");
        String f2=rs.getString("email");
        String f3=rs.getString("subject");
		String f4=rs.getString("comment");

%>

<tr>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= f1 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%=  f2 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%=  f3 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%=  f4 %></font></td>
</tr>

<%

	}
%>
</table>
<br><br>
<table border="0" align="center">
<tr>
	<td><input type="button" value="REFRESH" onClick="window.location.reload()"></td>
	<td><a href="admin_form.jsp"><input type="button" name="btnback" value="BACK"></a></td>
</tr>
</table>
</body>
</html>
