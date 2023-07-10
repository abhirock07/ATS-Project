<%-- 
    Document   : insert_flight_allocation
    Created on : Mar 19, 2011, 7:39:52 PM
    Author     : cegonsoft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
PreparedStatement pst;
int v3;
String v4;
int fid,gid,cid,empid,pid;
String fname,gname,splace,dplace,cname,empname,pname;
%>

<%

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
st=con.createStatement();
%>
<%

int v1=Integer.parseInt(request.getParameter("eid"));
int v2=Integer.parseInt(request.getParameter("fid"));
v3=Integer.parseInt(request.getParameter("pilotid"));
v4=request.getParameter("pname");
String v5=request.getParameter("dest");
String v6=request.getParameter("src");
int v7=Integer.parseInt(request.getParameter("pid"));
String v8=request.getParameter("txtpname");
String query="SELECT fno,fname,gid,gname,splace,dplace,cid,cname,empid,empname,pid,pname FROM air_cargo_service where empid='"+v1+"' or fno='"+v2+"' or pid='"+v7+"'";
rs=st.executeQuery(query);
while(rs.next())
		{
		fid=rs.getInt("fno");
        fname=rs.getString("fname") ;
        gid=rs.getInt("gid");
        gname=rs.getString("gname") ;
        splace=rs.getString("splace");
        dplace=rs.getString("dplace");
        cid=rs.getInt("cid");
        cname= rs.getString("cname");
        empid=rs.getInt("empid");
        empname=rs.getString("empname");
        pid=rs.getInt("pid");
        pname=rs.getString("pname");

	   }
String insert="insert into flight_allocation values(?,?,?,?,?,?,?,?,?,?)";
pst=con.prepareStatement(insert);
pst.setInt(1,empid);
pst.setString(2,empname);
pst.setInt(3,fid);
pst.setString(4,fname);
pst.setInt(5,pid);
pst.setString(6,pname);
pst.setInt(7,v3);
pst.setString(8,v4);
pst.setString(9,splace);
pst.setString(10,dplace);
int count=pst.executeUpdate();
if(count==1)
    {
   %>
   <jsp:forward page="flight_allocation.jsp"></jsp:forward>
   <%
   }
else
    {
    out.println("error");
    }

%>