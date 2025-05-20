<%@ include file="../connection/connection.jsp" %>

<%
String showtimeid=request.getParameter("showtimeid");
String query="select * from cinetime where showtimeid='"+showtimeid+"'";
rs=stmt.executeQuery(query);
session.setAttribute("showtimeid",showtimeid);

%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Showtime</title>
</head>
<body bgcolor="pink">
<p align="left"><a href="viewshowtime.jsp"><button>Return</button></a></p>
<h1 align="center">Update Show Time Details</h1>
<br><br>
<form action="updateshowtimeaction.jsp">
<table align="center" border="1">
<tr align="center">
	<td>Movie Name</td>
	<td>Hall Name</td>
	<td>Time 1</td>
	<td>Time 2</td>
	<td>Time 3</td>
	<td>Showtime ID</td>
</tr>


<% while(rs.next()==true)
	{
	%>

	<tr align="center">
	<td><label id="moviename"><%=rs.getString(1)%></label></td>
	<td><label name="hallname"><%=rs.getString(2)%></label></td>
	<td><input type="text" name="time1" value="<%=rs.getString(3)%>" required></td>
	<td><input type="text" name="time2" value="<%=rs.getString(4)%>"></td>
	<td><input type="text" name="time3" value="<%=rs.getString(5)%>"></td>
	<td><label name="showtimeid"><%=rs.getString(6)%></label></td>
</tr>
<% } %>
</table>
<p align="center"><button style="width:10%">Click to update</button></p>
</form>

</body>
</html>