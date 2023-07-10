<%-- 
    Document   : insert_empdetails
    Created on : Mar 19, 2011, 9:52:02 AM
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
String insert="insert into emp_details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
pst=con.prepareStatement(insert);
pst.setInt(1,eid);
pst.setString(2,ename);
pst.setString(3,password);
pst.setString(4,gender);
pst.setString(5,contact);
pst.setString(6,address);
pst.setString(7,qualification);
pst.setString(8,designation);
pst.setString(9,dob);
pst.setString(10,doj);
pst.setInt(11,exp);
pst.setString(12,salary);
pst.setString(13,cellno);
pst.setString(14,email);
int b=pst.executeUpdate();
if(b==1)
{
String query2="insert into logindetail values(?,?)";
pst=con.prepareStatement(query2);
pst.setString(1,ename);
pst.setString(2,password);
pst.executeUpdate();
%>
<jsp:forward page="emp_detail.jsp"></jsp:forward>
<%
}
else
    {
    out.println("Error in inserting data")    ;
    }
}
catch(Exception e)
        {
   out.println(e.getMessage());
    }
%>
