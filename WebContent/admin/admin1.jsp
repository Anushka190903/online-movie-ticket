<%
	String username=(String)session.getAttribute("username");
	if(username==null)
	{
		response.sendRedirect("../index.jsp");
	}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home Page</title>
</head>
<body bgcolor="white">
<h1 align="center"> Welcome to Cinemaniac Admin's Page</h1>
<h2 align="center"> What Action to perform? </h2>

<table align="center" border=1>
<tr align="center"> 
<td><a href="addmovie.jsp"> <button style="width:100%">Add Movie Details</button></a> </td>
</tr>
<tr></tr>
<tr></tr>
<tr align="center"> <td style="backgroud-color:black"><a href="addtheatre.jsp"> <button style="width:100%">Add Theatre Details</button></a> </td> 
<tr></tr>
<tr></tr>
<tr align="center"> <td style="backgroud-color:black"><a href="addshowtime.jsp"> <button style="width:100%">Add Show Time</button></a> </td> 
<tr></tr>
<tr></tr>
<tr align="center"> <td style="backgroud-color:black"><a href="deletemovie.jsp"> <button style="width:100%">Delete Movie Details</button></a> </td> 
<tr></tr>
<tr></tr>
<tr align="center"> <td style="backgroud-color:black"><a href="deletetheatre.jsp"> <button style="width:100%">Delete Theatre Details</button></a> </td>
<tr></tr>
<tr></tr>
<tr align="center"> <td style="backgroud-color:black"><a href="deleteshowtime.jsp"> <button style="width:100%">Delete Show Time Details</button></a> </td> 
 
<tr></tr>
<tr></tr>
<tr align="center"> <td style="backgroud-color:black"><a href="viewmovie.jsp"> <button style="width:100%">View Movie Table Details</button></a> </td> 
<tr></tr>
<tr></tr>
<tr align="center"> <td style="backgroud-color:black"><a href="viewtheatre.jsp"> <button style="width:100%">View Theatre Table Details</button></a> </td> 
<tr></tr>
<tr></tr>
<tr align="center"> <td style="backgroud-color:black"><a href="viewshowtime.jsp"> <button style="width:100%">View Show Time Table Details</button></a> </td> 
<tr></tr>
<tr></tr>
<tr align="center"> <td style="backgroud-color:black"><a href="changeadminpass.jsp"> <button style="width:100%">Change Password</button></a> </td> 
<tr></tr>
<tr></tr>
<tr align="center"> <td style="backgroud-color:black"><a href="frombookdelete.jsp"> <button style="width:100%">Clear Old Booking Details</button></a> </td>
<tr></tr>
<tr></tr>
<tr align="center"> <td style="backgroud-color:black"><a href="logout.jsp"> <button style="width:100%">Log Out</button></a> </td> 

</table>
</body>
</html>