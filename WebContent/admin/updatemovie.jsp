<%@ include file="../connection/connection.jsp" %>

<%
String movieid=request.getParameter("movieid");
String query="select * from cinemovie where movieid='"+movieid+"'";
rs=stmt.executeQuery(query);
session.setAttribute("movieid",movieid);
String movieimage1;
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
<p align="left"><a href="viewmovie.jsp"><button>Return</button></a></p>
<h1 align="center">Update Show Time Details</h1>
<br><br>
<form action="updatemovieaction.jsp">
<table align="center" border="1">
<tr align="center">
	<td>Movie Name</td>
	<td>Movie Language</td>
	<td>Movie Image Location</td>
	<td>Movie Release Date</td>
	<td>Movie Id</td>
</tr>


<% while(rs.next()==true)
	{
	movieimage1=rs.getString(3);
	%>
    <input type=hidden name="movieimage1" value="<%=movieimage1%>">
	<tr align="center">
	<td><label id="moviename"><%=rs.getString(1)%></label></td>
	<td><label><%=rs.getString(2)%></label></td>
	<td><input type="file" name="movieimage" value="<%=rs.getString(3)%>"></td>
	<td><input type="date" name="releasedate" value="<%=rs.getString(4)%>"></td>
	<td><label name="movieid"><%=rs.getString(5)%></label></td>
</tr>
<% } %>
</table>

<p align="center"><button style="width:10%">Click to update</button></p>
</form>

</body>
</html>