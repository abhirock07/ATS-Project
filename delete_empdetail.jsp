<%-- 
    Document   : delete_empdetail
    Created on : Mar 19, 2011, 11:15:17 AM
    Author     : cegonsoft
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
<head>
 <script language="JavaScript">
function confirm_entry()
{
    input_box=confirm("Are you sure you want to delete this Record ?");
    if(input_box==true)
    {
		alert("record deleted !!!");
		return true;
	}
    else
    {
		alert ("Delete Cancelled");
		return false;
	}
}

</script>


</head>
<body>
<body bgcolor="lightblue">
<table border="0" width="100%" height="150">
<tr><td><embed src="swf/main.swf" width="100%" height="150"></td></tr>
</table>
<form action="empdelete.jsp" method="post">
<p align="center">Enter Employee Id :
<select name="eid">
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
<input type="submit" value="Delete" onclick="return confirm_entry();">
</form>
</body>
</html>