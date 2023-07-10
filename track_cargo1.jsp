<%-- 
    Document   : track_cargo1
    Created on : Mar 18, 2011, 2:52:31 PM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%!
int txtcno;
Connection con;
Statement st;
PreparedStatement pst;
ResultSet rs;
String status;
%>

<html>
<body bgcolor="greenyellow"></body>
<table border="5" width="100%" height="170" align="center">
<tr><td><embed src="swf/main8.swf" width="100%" height="170"></td></tr>
</table>

<%

txtcno=Integer.parseInt(request.getParameter("txtcno"));
%>
<%
try
 {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
st=con.createStatement();
String query="SELECT * FROM cargo_tracking where cid="+txtcno+"";
rs=st.executeQuery(query);
%>
<table border="4" cellspacing="2" cellpadding="2" align="center">
<tr>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Cargo No</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Cargo Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Goods Id</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Goods Name</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Source Place</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Destination Place</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Transfer Date</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Delivery Date</font></th>
<th bgcolor="black"><font face="Arial, Helvetica, sans-serif" color="white">Status</font></th>

</tr>

<%
	while(rs.next())
	{
		int f1=rs.getInt("cid");
		String f2=rs.getString("cname");
		String f3=rs.getString("gid");
		String f4=rs.getString("gname");
		String f5=rs.getString("splace");
		String f6=rs.getString("dplace");
		String f7=rs.getString("tdate");
		String f8=rs.getString("ddate");

			if(f8.equals(new java.util.Date().getDate()))
             {
            status="Received";
           
            st=con.createStatement();
            String query1="update cargo_tracking set status='"+status+"' where cid='"+f1+"'";
            int b=st.executeUpdate(query1) ;
           }
             else
             {

              status="Pending";

            }

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
<td bgcolor="skyblue"><font face="Arial, Helvetica, sans-serif"><%= status %></font></td>
</tr>

<%

	}
}
catch(Exception e)
     {
    out.println(e.getMessage());
    }
%>
<table border="0" align="center">
<tr><td>
<a href="index.jsp"><input type="button" value="BACK"></a>
</td></tr>
</table>
</body>
</html>
