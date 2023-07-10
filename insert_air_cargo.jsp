<%-- 
    Document   : insert_air_cargo
    Created on : Mar 19, 2011, 1:23:40 PM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
PreparedStatement pst;
int f1,f3,f10,f12,f14;
String f2,f4,f5,f6,f7,f8,f9,f11,f13,f15,f16;

%>
<%

 try
         {
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
 // st=con.createStatement();
%>
<%

f1=Integer.parseInt(request.getParameter("fno"));
f2=request.getParameter("txtfname");
f3=Integer.parseInt(request.getParameter("gid"));
f4=request.getParameter("txtgname");
f5=request.getParameter("src");
f6=request.getParameter("dest");
 f7=request.getParameter("txtdot");
 f8=request.getParameter("txtweight");
 f9=request.getParameter("txtprice");
f10=Integer.parseInt(request.getParameter("txtcid"));

f11=request.getParameter("txtcname");
 f12=Integer.parseInt(request.getParameter("eid"));
 f13=request.getParameter("txtemp");
out.println(f13);	
f14=Integer.parseInt(request.getParameter("txtpid"));

 f15=request.getParameter("txtpname");
 f16=request.getParameter("txtddate");
String insert="insert into air_cargo_service values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

pst=con.prepareStatement(insert);

pst.setInt(1,f1);
pst.setString(2,f2);
pst.setInt(3,f3);
pst.setString(4,f4);
pst.setString(5,f5);
pst.setString(6,f6);
pst.setString(7,f7);
pst.setString(8,f8);
pst.setString(9,f9);
pst.setInt(10,f10);
pst.setString(11,f11);
pst.setInt(12,f12);
pst.setString(13,f13);
pst.setInt(14,f14);
pst.setString(15,f15);
pst.setString(16,f16);
int count=pst.executeUpdate();
if(count==1)
    {
  %>
  <jsp:forward page="cargo_scheduling.jsp"></jsp:forward>
  <%
    }
else
    {
    out.println("Error in inserting");
    }
}
 catch(Exception e)
         {
     out.println(e.getMessage());
     }
%>

