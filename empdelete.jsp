<%-- 
    Document   : empdelete
    Created on : Mar 19, 2011, 11:17:39 AM
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
<%
int eid=Integer.parseInt(request.getParameter("eid"));
String delete="delete from emp_details where eid='"+eid+"'";
int count=st.executeUpdate(delete);
%>
<jsp:forward page="emp_detail.jsp"></jsp:forward>
<%
}
catch(Exception e)
        {
    out.println(e.getMessage());
    }

%>