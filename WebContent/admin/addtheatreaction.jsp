<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="../connection/connection.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
int count=0;
String hallname=request.getParameter("hallname");
String halllocation=request.getParameter("halllocation");
String halladdress=request.getParameter("halladdress");
String hallcontact=request.getParameter("hallcontact");
String query1="select * from CINEHALL where halllocation='" + halllocation + "' ";
rs=stmt.executeQuery(query1);
String str[]=hallname.split(" ");

while(rs.next()==true)
{
	count++;
}

String hallid=halllocation+count+str[0];

String query2="insert into cinehall values(?,?,?,?,?)";
ps=con.prepareStatement(query2);

ps.setString(1,hallname);
ps.setString(2,halllocation);
ps.setString(3,halladdress);
ps.setString(4,hallcontact);
ps.setString(5,hallid);
int i=ps.executeUpdate();

con.close();

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Successful</title>
</head>
<body bgcolor="pink" align="center">
<form action="addseats.jsp" method="post">
<div align="center">
<p>Hall details entered succesfully</p>
<input type="hidden" name="hallid" value="<%= hallid %>">
<input name="click here" value="click here" type="submit">
</form>
</body>
</html>