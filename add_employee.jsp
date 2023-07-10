<%-- 
    Document   : add_employee
    Created on : Mar 19, 2011, 9:41:24 AM
    Author     : Amc college
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
<head>
<title>Employee Detail</title>
<script>
function validate()
{

if((document.frm1.txteid.value=="")||(document.frm1.txtename.value=="")||
	(document.frm1.txtpwd.value=="")||(document.frm1.gender.value=="")||
	(document.frm1.txtcontact.value=="")||(document.frm1.txtaddr.value=="")||
	(document.frm1.txtquali.value=="")||(document.frm1.txtdesi.value=="")||
	(document.frm1.txtdob.value=="")||(document.frm1.doj.value=="")||
	(document.frm1.txtexp.value=="")||(document.frm1.txtsal.value=="")||
	(document.frm1.txtcell.value=="")||(document.frm1.txtemail.value==""))
 {
 document.getElementById("uname").innerHTML="<blink>"+"You must Fill Field with * mark !!!"+"</blink>";
 //document.getElementById("upwd").innerHTML="<blink>"+"Enter the Password !!!"+"</blink>";
 document.frm1.txteid.focus();
 return false;
 }
 return true;
 }
</script>

<body bgcolor="lightblue">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main8.swf" width="100%" height="170"></td></tr>
</table>
<br>
<form name="frm1" method="post" action="insert_empdetails.jsp">

<%!
Connection con;
Statement st;
ResultSet rs;
int flag=0;

%>

<%
try
{
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
  st=con.createStatement();
  %>

<table width="70%" border="0" align="center">

<tr>
    <td align="right">Emp Id :<font color="red">*<input type="text" name="txteid" value=
	"<%
		String query="SELECT max(eid) FROM emp_details";
		rs=st.executeQuery(query);
		if(rs.next())
		{
		int empid=rs.getInt(1);			
			out.println(empid+1);
		}
		
        }
       catch(Exception e)
               {
           out.println(e.getMessage());
           }

	%>"  ></td>
    <td align="right">Emp Name :<font color="red">*<input type="text" name="txtename"></td>
</tr>

<tr>
    <td align="right">Initial Password :<font color="red">*</font><input type="password" name="txtpwd"></td>
    <td align="right">Gender :<font color="red">*
		<select id="gender" name="gender">
			<option>M</option>
			<option>F</option>
		</select></td>
</tr>

<tr>
    <td align="right">Contact :<input type="text" name="txtcontact"></td>
    <td align="right">Address :<font color="red">*<input type="text" name="txtaddr"></td>
</tr>

<tr>
    <td align="right">Qualification :<font color="red">*<input type="text" name="txtquali"></td>
    <td align="right">Designation :<font color="red">*<input type="text" name="txtdesi"></td>
</tr>

<tr>
    <td align="right">Date Of Birth :<font color="red">*<input type="text" name="txtdob"></td>
    <td align="right">Date Of Joining :<font color="red">*<input type="text" name="txtdoj"></td>
</tr>

<tr>
    <td align="right">Experience :<font color="red">*<input type="text" name="txtexp"></td>
    <td align="right">Salary :<font color="red">*<input type="text" name="txtsal"></td>
</tr>

<tr>
    <td align="right">Cell Number :<font color="red">*<input type="text" name="txtcell"></td>
    <td align="right">Email Id :<font color="red">*<input type="text" name="txtemail"></td>
</tr>


<tr><tr><td></td><td><font color="red"><div id="uname"></div></font></td></tr>
</table>


<br>
<table border="0" align="center">
<tr>
	<td><input type="submit" name="add" value="SAVE" onClick="return validate();"></td>
	<td><input type="reset" name="reset" value="RESET"></td>
	<td><a href="emp_detail.jsp"><input type="button" name="back" value="BACK"></a></td>
</tr>
</table>
</form>
</body>
</html>
