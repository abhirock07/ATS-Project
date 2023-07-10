<%-- 
    Document   : insert_cargo_tracking
    Created on : Mar 19, 2011, 4:57:51 PM
    Author     : cegonsoft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
PreparedStatement pst;
%>
<%
 try
         {
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
  
%>
<%
int f1=Integer.parseInt(request.getParameter("cid"));
String f2=request.getParameter("txtcname");
String f3=request.getParameter("gid");
String f4=request.getParameter("txtgname");
String f5=request.getParameter("src");
String f6=request.getParameter("dest");
int f7=Integer.parseInt(request.getParameter("txtweight"));
String f8=request.getParameter("txtprice");
String f9=request.getParameter("status");
String f10=request.getParameter("txttdate");
String f11=request.getParameter("txtddate");
String insert="insert into cargo_tracking values(?,?,?,?,?,?,?,?,?,?,?)";
pst=con.prepareStatement(insert);
pst.setInt(1,f1);
pst.setString(2,f2);
pst.setString(3,f3);
pst.setString(4,f4);
pst.setString(5,f5);
pst.setString(6,f6);
pst.setString(7,f10);
pst.setString(8,f11);
pst.setInt(9,f7);
pst.setString(10,f8);
pst.setString(11,f9);
int count=pst.executeUpdate();

out.println(count);
if(count==1)
    {

%>
<jsp:forward page="cargo_tracking.jsp"></jsp:forward>
<%
}
else
    {
   out.println("error in ")    ;
    }
}
 catch(Exception e)
         {
     out.println(e.getMessage());
     }
%>

