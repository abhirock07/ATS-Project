<%-- 
    Document   : emp_detail
    Created on : Mar 19, 2011, 9:25:17 AM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
<body bgcolor="blueviolet">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main4.swf" width="100%" height="170"></td></tr>
</table>
<%!
Connection con;
Statement st;
ResultSet rs;
%>

<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
st=con.createStatement();
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
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Email</font></th>

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
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f1 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f2 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f3 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f4 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f5 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f6 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f7 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f8 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f9 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f10 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f11 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f12 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f13 %></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif" size="2"><%= f14 %></font></td>
</tr>

<%
	
	}
}
catch(Exception e)
     {

    out.println(e.getMessage());

    }
%>
</table>
<br><br>
<table border="0" align="center">
<tr>
	<td><a href="add_employee.jsp"><input type="button" name="btnadd" value="ADD"></td>
	<td><a href="update_emp.jsp"><input type="button" name="btnadd" value="UPDATE"></td>
	<td><a href="delete_empdetail.jsp"<input type="button" name="btnadd" value="DELETE"></td>
	<td><input type="button" value="REFRESH" onClick="window.location.reload()"></td>
	<td><a href="http://localhost:8080/airfreight/admin_form.jsp"><input type="button" value="BACK"></a></td>
	<td><a href="admin_form.jsp"<input type="button" name="btnback" value="BACK"></td>
</tr>
</table>
</body>
</html>