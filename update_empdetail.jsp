<%-- 
    Document   : update_empdetail
    Created on : Mar 19, 2011, 10:42:09 AM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
PreparedStatement pst;
ResultSet rs;
int eid;
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
<%
eid=Integer.parseInt(request.getParameter("roll"));
String query="select * from emp_details where eid='"+eid+"'";
rs=st.executeQuery(query);
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
<form name="frm" method="post" action="update_empdetail1.jsp">

<table width="70%" border="0" align="center">

<tr>
    <td align="right">Emp Id :<font color="red">*<input type="text" name="txteid" value="<%= f1 %>" readonly ></td>
    <td align="right">Emp Name :<font color="red">*<input type="text" name="txtename" value="<%= f2 %>"></td>
</tr>

<tr>
    <td align="right">Initial Password :<font color="red">*<input type="password" name="txtpwd" value="<%= f3 %>"></td>
    <td align="right">Gender :<font color="red">*
		<select id="gender" name="gender">
			<option>M</option>
			<option>F</option>
		</select></td>
</tr>

<tr>
    <td align="right">Contact :<font color="red">*<input type="text" name="txtcontact" value="<%= f5 %>"></td>
    <td align="right">Address :<font color="red">*<input type="text" name="txtaddr" value="<%= f6 %>"></td>
</tr>

<tr>
    <td align="right">Qualification :<font color="red">*<input type="text" name="txtquali" value="<%= f7 %>"></td>
    <td align="right">Designation :<font color="red">*<input type="text" name="txtdesi" value="<%= f8 %>"></td>
</tr>

<tr>
    <td align="right">Date Of Birth :<font color="red">*<input type="text" name="txtdob" value="<%= f9 %>"></td>
    <td align="right">Date Of Joining :<font color="red">*<input type="text" name="txtdoj" value="<%= f10 %>"></td>
</tr>

<tr>
    <td align="right">Experience :<font color="red">*<input type="text" name="txtexp" value="<%= f11 %>"></td>
    <td align="right">Salary :<font color="red">*<input type="text" name="txtsal" value="<%= f12 %>"></td>
</tr>

<tr>
    <td align="right">Cell Number :<font color="red">*<input type="text" name="txtcell" value="<%= f13 %>"></td>
    <td align="right">Email Id :<font color="red">*<input type="text" name="txtemail" value="<%= f14 %>"></td>
</tr>


<tr><tr><td></td><td><font color="red"><div id="uname"></div></font></td></tr>
</table>

<%

	}
}
catch(Exception e)
        {
    out.println(e.getMessage());
    }
%>


<table border="0" align="center">
<tr>
	<td><input type="submit" value="UPDATE"></td>
	<td><a href="emp_detail.jsp"><input type="button" name="cancel" value="CANCEL"></a></td>
</tr>
</table>

</form>
</body>
</html>
