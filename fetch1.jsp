<%--
    Document   : fetch
    Created on : Mar 13, 2011, 12:39:45 PM
    Author     : Amc College
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!
String name,pwd;
Connection con;
Statement st;
ResultSet rs;
int flag=0;
%>
<%
name=request.getParameter("t1");
pwd=request.getParameter("t2");

try
{
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
  st=con.createStatement();
  String select="select * from logindetail where username='"+name+"' and password='"+pwd+"'";
  rs=st.executeQuery(select);
  if(rs.next())
      {
    %>

    <jsp:forward page="emp_form.jsp"></jsp:forward>
    <%

      }
  else
      {
      %>
      <jsp:forward page="emp_login.jsp"></jsp:forward>
      <%
      }
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>




