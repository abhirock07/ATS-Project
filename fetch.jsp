<%-- 
    Document   : fetch
    Created on : Mar 13, 2011, 12:39:45 PM
    Author     : Amc college
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!
String name,pwd;
%>
<%
name=request.getParameter("t1");
pwd=request.getParameter("t2");

if(name.equals("Admin") && pwd.equals("Admin"))
{
 %>

 <jsp:forward page="admin_form.jsp"></jsp:forward>

 <%
 }
else
    {
      %>
      <jsp:forward page="admin_login.jsp"></jsp:forward>
      <%
      }
%>




