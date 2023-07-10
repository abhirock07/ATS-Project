<%-- 
    Document   : process_report
    Created on : Mar 19, 2011, 7:02:03 PM
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
<body>
<table border="0" width="100%" height="150">
<tr><td><embed src="swf/main.swf" width="100%" height="150"></td></tr>
</table>
<%
String query="SELECT * FROM process_tracking";
rs=st.executeQuery(query);
%>
<table border="1" cellspacing="2" cellpadding="2" align="center">
<tr>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Emp</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Emp Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Flight No</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Flight Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Pilot Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Pilot Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Cargo Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Cargo Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Source</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Destination</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Process Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white" size="2">Process Name</font></th>
</tr>

<?php
	$i=0;
	while($i<$num)
	{
		$f1=mysql_result($result,$i,"eid");
		$f2=mysql_result($result,$i,"ename");
		$f3=mysql_result($result,$i,"fno");
		$f4=mysql_result($result,$i,"fname");
		$f5=mysql_result($result,$i,"pid");
		$f6=mysql_result($result,$i,"pname");
		$f7=mysql_result($result,$i,"cid");
		$f8=mysql_result($result,$i,"cname");
		$f9=mysql_result($result,$i,"splace");
		$f10=mysql_result($result,$i,"dplace");
		$f11=mysql_result($result,$i,"prsid");
		$f12=mysql_result($result,$i,"prsname");


?>

<tr>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f1; ?></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f2; ?></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f3; ?></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f4; ?></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f5; ?></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f6; ?></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f7; ?></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f8; ?></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f9; ?></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f10; ?></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f11; ?></font></td>
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><?php echo $f12; ?></font></td>
</tr>

<?php
	$i++;
	}
?>
</table>
<br><br>
<table border="0" align="center">
<tr>
	<td><input type="button" value="REFRESH" onClick="window.location.reload()"></td>
	<td><a href="reports.php"<input type="button" name="btnback" value="BACK"></td>
</tr>
</table>
</body>
</html>