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
String query="select * from cinetime";
rs=stmt.executeQuery(query);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Movie</title>
</head>
<body bgcolor="pink">
<p align="left"><a href="admin1.jsp"><button>Return</button></a></p>
<h1 align="center">Details of Show Time table</h1>
<br><br>

<table align="center" border="1">
<tr align="center">
	<td>Movie Name</td>
	<td>Hall Name</td>
	<td>Time 1</td>
	<td>Time 2</td>
	<td>Time 3</td>
	<td>Show Time ID</td>
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
	<td><%=rs.getString(6)%></td>
</tr>
<% } %>
</table>
<br> <br>
<form action="deleteshowtimeaction.jsp" method="post">
<table align="center">
<tr><td>You Want to delete show time details?</td></tr>
<tr><td>Enter the Show Time ID &nbsp &nbsp          :</td>
<td><input type="text" name="showtimeid" required></td>
<tr><td align="center"><input type="submit" name="deleteshowtime" value="Submit"></td></tr>
</table>
</form>
</body>
</html>