<%-- 
    Document   : insert_userquote
    Created on : Mar 18, 2011, 12:59:16 PM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!
String txtcname,txtsname,txtscontact,txtccontact,txtsaddr,txtcaddr,src,dest;
String txtszip,txtczip,txtscell,txtccell,txtsfax,txtcfax,txtsemail,txtcemail,txtpdate;
int txtweight;
Connection con;
Statement st;
PreparedStatement pst;
ResultSet rs;
%>
<%
txtsname=request.getParameter("txtsname");
txtcname=request.getParameter("txtcname");
txtscontact=request.getParameter("txtscontact");
txtccontact=request.getParameter("txtccontact");
txtsaddr=request.getParameter("txtsaddr");
txtcaddr=request.getParameter("txtcaddr");
src=request.getParameter("src");
dest=request.getParameter("dest");
txtszip=request.getParameter("txtszip");
txtczip=request.getParameter("txtczip");
txtscell=request.getParameter("txtscell");
txtccell=request.getParameter("txtccell");
txtsfax=request.getParameter("txtsfax");
txtcfax=request.getParameter("txtcfax");
txtsemail=request.getParameter("txtsemail");
txtcemail=request.getParameter("txtcemail");
txtpdate=request.getParameter("txtpdate");
txtweight=Integer.parseInt(request.getParameter("txtweight"));
%>
<%
try
 {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("Jdbc:Odbc:airfreight")   ;
st=con.createStatement();
String query="insert into quote_table values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
pst=con.prepareStatement(query);
pst.setString(1,txtsname);
pst.setString(2,txtscontact);
pst.setString(3,txtsaddr);
pst.setString(4,src);
pst.setString(5,txtszip);
pst.setString(6,txtscell);
pst.setString(7,txtsfax);
pst.setString(8,txtsemail);
pst.setString(9,txtpdate);
pst.setString(10,txtcname);
pst.setString(11,txtccontact);
pst.setString(12,txtcaddr);
pst.setString(13,dest);
pst.setString(14,txtczip);
pst.setString(15,txtccell);
pst.setString(16,txtcfax);
pst.setString(17,txtcemail);
pst.setInt(18,txtweight);
int insert=pst.executeUpdate();
if(insert==1)
    {
%>
<jsp:forward page="quote_success.jsp"></jsp:forward>
<%    }
else
    {
%>
<jsp:forward page="quote_failure.jsp"></jsp:forward>
<%    }


 }
catch(Exception e)
 {
    out.println(e.getMessage());
 }
%>
