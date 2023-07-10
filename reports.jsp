<%-- 
    Document   : reports
    Created on : Mar 19, 2011, 6:40:39 PM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CSS/menu_style.css"/>
<link rel='stylesheet' type="text/css" href="menu_style1.css" />
</head>

</head>
<body bgcolor="lightblue">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main8.swf" width="100%" height="170"></td></tr>
</table>
<div class="outer">
	<div id="menu1">
		<ul>
			<li><a href="cargo_report.jsp" title="cargo">Cargo Report</a></li>
			<li><a href="emp_report.jsp" title="emp">Employee Report</a></li>
			
			</ul>
	</div>
</div>
<table border="0" align="center">
<tr>
	<td><input type="button" value="REFRESH" onClick="window.location.reload()"></td>
    <td><a href="admin_form.jsp"><input type="button" name="btnback" value="BACK"></a></td>
</tr>
</table>
</body>
</html>