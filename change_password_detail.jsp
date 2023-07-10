<%-- 
    Document   : change_password_detail
    Created on : Mar 19, 2011, 8:07:15 PM
    Author     : cegonsoft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<html>

<body background ="button/1.jpg">
<%!
Connection con;
Statement st;
ResultSet rs;
PreparedStatement pst;
%>

<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
st=con.createStatement();
String username=request.getParameter("txtuid");
String pword=request.getParameter("txtoldpwd");
String newpassword=request.getParameter("txtnewpwd");
String confirmnewpassword=request.getParameter("txtconfirmpwd");
String sql="UPDATE logindetail SET password='"+newpassword+"' where username='"+username+"'";
        int b=st.executeUpdate(sql);
        if(b==1)
            {
        %>
        <center>Congratulations You have successfully changed your password
		<a href="emp_form.jsp">Go Home</a>
        </center>
	   <%
        }
	  else
	  {
      %>
		<center>
		<a href="changepassword.jsp">TryAgain</a>
        </center>
	<%
      }


%>

</body>
</html>