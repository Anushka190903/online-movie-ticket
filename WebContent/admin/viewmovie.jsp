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
String query="select * from cinemovie";
rs=stmt.executeQuery(query);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Movie Details</title>
</head>
<body bgcolor="pink">
<h1 align="center">Details of Movie table</h1>
<br><br>

<table align="center" border="1">
<tr align="center">
	<td>Movie Name</td>
	<td>Movie Language</td>
	<td>Movie Image Location</td>
	<td>Movie Release Date</td>
	<td>Movie ID</td>
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
<p align="center"><a href="admin1.jsp"><button style="width:10%">HOME</button></a></p>
<form action="updatemovie.jsp">
<p align="center"><label> Update Movie Details :</label>
<input type="text" name="movieid" placeholder="Enter Movie ID">
<br><br>
<input type="submit" value="Update" name="submitupdate">
</form>
</body>
</html>
