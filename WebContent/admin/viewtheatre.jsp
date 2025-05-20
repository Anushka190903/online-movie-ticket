<%
	String username=(String)session.getAttribute("username");
	if(username==null)
	{
		response.sendRedirect("../index.jsp");
	}
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../connection/connection.jsp" %>

<%
String query="select * from CINEHALL";
rs=stmt.executeQuery(query);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Theatre Details</title>
</head>
<body bgcolor="pink">
<h1 align="center">Details of Theatre table</h1>
<br><br>

<table align="center" border="1">
<tr align="center">
	<td>Hall Name</td>
	<td>Hall Location</td>
	<td>Hall Address</td>
	<td>Hall Contact</td>
	<td>Hall ID</td>
</tr>


<% while(rs.next()==true)
	{
	%>

	<tr align="center">
	<td><%=rs.getString(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
    	
</tr>
<% } %>
</table>
<br> <br>
<p align="center"><a href="admin1.jsp"><button style="width:10%">HOME</button></a></p>
</body>
</html>