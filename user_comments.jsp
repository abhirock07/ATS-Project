
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>

<%!
Connection con;
Statement st;
PreparedStatement pst;
ResultSet rs;
String name,email,subject,comments;
%>

<%
name=request.getParameter("name");
email=request.getParameter("email");
subject=request.getParameter("subject");
comments=request.getParameter("comments");
%>

<%
try
 {
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("Jdbc:Odbc:airfreight")   ;
st=con.createStatement();
String query="insert into user_comment values(?,?,?,?)";
pst=con.prepareStatement(query);
pst.setString(1,name);
pst.setString(2,email);
pst.setString(3,subject);
pst.setString(4,comments);
int insert=pst.executeUpdate();
if(insert==1)
    {
%>
<jsp:forward page="comment_success.jsp"></jsp:forward>
<%    }
else
    {
%>
<jsp:forward page="comment_failure.jsp"></jsp:forward>
<%    }

}
catch(Exception e)
 {
    out.println(e.getMessage());
 }
%>