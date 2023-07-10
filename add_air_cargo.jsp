<%-- 
    Document   : add_air_cargo
    Created on : Mar 19, 2011, 11:56:27 AM
    Author     : Amc college
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
int flag=0;
String city;
%>
<%

  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("Jdbc:Odbc:airfreight");
  st=con.createStatement();




%>


<html>
<head>
<title>Cargo Schedule</title>
<script>
function getdata()
{
	<%
		String query11="select * from flight_info";
        rs=st.executeQuery(query11);
		while(rs.next())
		{
			int f1=rs.getInt("fid");
            String f2=rs.getString("fname");
		%>
		if(document.frm1.fno.value=="<%= f1 %>")
		{

			document.frm1.txtfname.value="<%= f2 %>";
		}
	<%
	
		}
	%>
}
function getdata1()
{
	<%
		String query12="select * from goods_info";

        rs=st.executeQuery(query12);
		while(rs.next())
		{
			int f1=rs.getInt("gid");
            String f2=rs.getString("gname");
		%>
		if(document.getElementById("gid").value=="<%= f1 %>")
		{

			document.getElementById("txtgname").value="<%= f2 %>";
		}
	<%
	
		}
	%>
}
function getdata2()
{
	<%
		String query13="select * from emp_details";
        rs=st.executeQuery(query13);
        while(rs.next())
		{
            int f1=rs.getInt("eid");
            String f2=rs.getString("ename");
		%>
		if(document.getElementById("eid").value=="<%= f1 %>")
		{

			document.getElementById("txtemp").value="<%= f2 %>";
		}
	<%
	
		}
	%>
}
function validate()
{
if((document.frm1.fno.value=="")||(document.frm1.txtfname.value=="")||
	(document.frm1.txtcid.value=="")||(document.frm1.txtcname.value=="")||
	(document.frm1.gid.value=="")||(document.frm1.txtgname.value=="")||
	(document.frm1.src.value=="")||(document.dest.txtto.value=="")||
	(document.frm1.txtweight.value=="")||(document.frm1.txtprice.value=="")||
	(document.frm1.eid.value=="")||(document.frm1.emp.value=="")||
	(document.frm1.pid.value=="")||(document.frm1.txtpname.value=="")||
	(document.frm1.txtdot.value==""))
{
	document.getElementById("uname").innerHTML="<blink>"+"Enter the Valid Data !!"+"</blink>";
	document.frm1.fno.focus();
	return false;
}
else
{
	return true;
}

}

</script>
</head>
<body bgcolor="lightblue">
<table border="5" width="100%" height="170">
<tr><td><embed src="swf/main5.swf" width="100%" height="170"></td></tr>
</table>
<br>
<form name="frm1" method="get" action="insert_air_cargo.jsp">
 
<table width="70%" border="0" align="center">
<tr>
    <td align="right">Flight No :<select id="fno" onChange="return getdata();" name="fno">
	<option>-Select-</option>
	<%
		String query="select fid from flight_info";
		rs=st.executeQuery(query);
		while(rs.next())
		{
			int f1=rs.getInt("fid");
	%>
	<option value=<%= f1 %>><%= f1 %></option>
	<%
		
		}
	%></td></select>

    <td align="right">Flight Name :<input type="text" id="txtfname" name="txtfname"></td>
</tr>
<tr><td align="right">Cargo Id :<input type="text" id="txtcid" name="txtcid" value="
<%
		String query1="SELECT max(cid) FROM air_cargo_service";
		rs=st.executeQuery(query1);
			if(rs.next())
			{
					int cargoid=rs.getInt(1);
                    cargoid+=1;
			
			out.println(cargoid);
		}
		else
		{
			out.println("1001");
		}

	%>" readonly ></td>
	<td align="right">Cargo Name :<input type="text" id="txtcname" name="txtcname"><font color="red"></td>
</tr>
<tr>
    <td align="right">Goods Id :<select id="gid" onChange="return getdata1();" name="gid">
		<option>-Select-</option>
	<%
		String query2="select gid from goods_info";
		rs=st.executeQuery(query2);
		while(rs.next())
		{
			int f1=rs.getInt("gid");
	%>
	<option value=<%= f1 %>><%= f1 %></option>
	<%
		
		}
	%><font color="red"></td></select>
    <td align="right">Goods Name :<input type="text" id="txtgname" name="txtgname"><font color="red"</td>
</tr>
<tr>
    <td align="right">Leaving From :<select id="src" name="src">
		<option>-Select-</option>
	<%
		String query3="select name from city_info";
		rs=st.executeQuery(query3);
		while(rs.next())
		{
			 city=rs.getString("name");
	%>
	<option value=<%= city %>><%= city %></option>
	<%
	
	}
	%>
    <font color="red">*</td></select>
    <td align="right">Going To :<select id="dest" name="dest">
		<option>-Select-</option>
        <%
		String query8="select name from city_info";
		rs=st.executeQuery(query8);
		while(rs.next())
		{
			 city=rs.getString("name");
	%>


		<option value=<%= city %>><%= city %></option>
        <%

	}
	%>

	<font color="red">*</td></select>
</tr>
<tr>
    <td align="right">Weight :<input type="text" name="txtweight"><font color="red"></td>
    <td align="right">Price :<input type="text" name="txtprice"><font color="red"></td>
</tr>
<tr><td align="right">Emp Id :<select id="eid" onChange="return getdata2();" name="eid">
		<option>-Select-</option>
	<%
       
       String query4="select eid,ename from emp_details";

        rs=st.executeQuery(query4);
		while(rs.next())
		{
            int f1=rs.getInt("eid");
         %>
	<option value=<%= f1 %>><%= f1 %></option>
	<%
		
		}
       

	%></td></select>
	<td align="right">Emp Name :<input type="text" id="txtemp" name="txtemp"></td></tr>

   <tr>
	<td align="right">Process Id :<input type="text" id="txtpid" name="txtpid" value="<%
		String query5="SELECT max(pid) FROM air_cargo_service";
        rs=st.executeQuery(query5);
        if(rs.next())
            {
			int prsid=rs.getInt(1);
            prsid+=1;
            out.println(prsid);
			}
			
		
		else
		{
			out.println("2001");
		}

	%>" readonly ></td>
	<td align="right">Process Name :<input type="text" id="txtpname" name="txtpname"><font color="red"></td>
</tr>
<tr><td align="right">Date Of Transfer :<input type="text" name="txtdot" value=""><font color="red"></td>

<td align="right"> Delivery Date :<input type="text" name="txtddate" value=""><font color="red"></td>
</tr>
		<tr><tr><td></td><td><font color="red"><div id="uname"></div></font></td></tr>
        </table>
<br>
<table border="0" align="center">
<tr>
	<td><input type="submit" value="SAVE" onClick="return validate();"></td>
	<td><input type="reset" name="reset" value="RESET"></td>
	<td><a href="admin_form.jsp"><input type="button" name="back" value="BACK"></a></td>
</tr>
</table>


</form>
</body>
</html>
