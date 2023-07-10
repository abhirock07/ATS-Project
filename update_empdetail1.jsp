<%-- 
    Document   : update_empdetail1
    Created on : Mar 19, 2011, 10:58:22 AM
    Author     : Amc College
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!
int eid,exp;
String ename,password,gender,contact,address,qualification,designation,dob,doj;
String salary,cellno,email;
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
eid=Integer.parseInt(request.getParameter("txteid"));
ename=request.getParameter("txtename");
password=request.getParameter("txtpwd");
gender=request.getParameter("gender");
contact=request.getParameter("txtcontact");
address=request.getParameter("txtaddr");
qualification=request.getParameter("txtquali");
designation=request.getParameter("txtdesi");
dob=request.getParameter("txtdob");
doj=request.getParameter("txtdoj");
exp=Integer.parseInt(request.getParameter("txtexp"));
salary=request.getParameter("txtsal");
cellno=request.getParameter("txtcell");
email=request.getParameter("txtemail");
 st=con.createStatement();
String update="update emp_details set eid='"+eid+"'," +
        "ename='"+ename+"',password='"+password+"'," +
        "gender='"+gender+"',contact='"+contact+"'," +
        "address='"+address+"',qualification='"+qualification+"'," +
        "designation='"+designation+"',dob='"+dob+"'," +
        "doj='"+doj+"',exp='"+exp+"',salary='"+salary+"'," +
        "cellno='"+cellno+"',email='"+email+"' where eid='"+eid+"'";

 int count=st.executeUpdate(update);
 if(count==1)
     {
     st=con.createStatement();
 String update1="update logindetail set password='"+password+"' where username='"+ename+"'";
int count1=st.executeUpdate(update);
%>
<jsp:forward page="emp_detail.jsp"></jsp:forward>
<%
      }
 else
     {
     out.println("Error in updating");
     }
 }
catch(Exception e)
 {
    out.println(e.getMessage());
 }

%>