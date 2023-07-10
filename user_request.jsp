<%-- 
    Document   : user_request
    Created on : Mar 18, 2011, 6:54:22 PM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<html>
<body bgcolor="peachpuff">
<table border="5" width="100%" height="170">
<tr><td>
<embed src="swf/main3.swf" width="100%" height="170"">
</td></tr>
</table>
<%!
String name,pwd;
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
  String query="SELECT * FROM quote_table";
  rs=st.executeQuery(query);


%>
<table border="4" cellspacing="2" cellpadding="2" align="center">
<tr>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Shipper's Name</font></th>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Shipper's Phone</font></th>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Shipper's Address</font></th>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Shipper's City</font></th>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Shipper's Zipcode</font></th>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Shipper's Cellno</font></th>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Pickup Date</font></th>

<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Consignee Name</font></th>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Consignee phone</font></th>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Consignee Address</font></th>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Consignee city</font></th>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Consignee Email</font></th>
<th bgcolor="black"><font size="2" face="Arial, Helvetica, sans-serif" color="white">Weight</font></th>
</tr>

<%

	while(rs.next())
        
	{
		String f1=rs.getString("sname");
        String f2=rs.getString("scontact");
        String f3=rs.getString("saddress");
		String f4=rs.getString("scity");
		String f5=rs.getString("szipcode");
		String f6=rs.getString("scellno");
		String f7=rs.getString("pickupdate");
		String f8=rs.getString("cname");
		String f9=rs.getString("ccontact");
		String f10=rs.getString("caddress");
		String f11=rs.getString("ccity");
		String f12=rs.getString("cemail");
		String f13=rs.getString("totalweight");
%>

<tr>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f1 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f2 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f3 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f4 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f5 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f6 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f7 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f8 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f9 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f10 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f11 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f12 %></font></td>
<td bgcolor="skyblue"><font size="2" face="Arial, Helvetica, sans-serif"><%= f13 %></font></td>

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
<table align="center">
<tr><td><a href="admin_form.jsp"><input type="button" value="BACK"></a></td></tr>
</table>
</body>
</html>
