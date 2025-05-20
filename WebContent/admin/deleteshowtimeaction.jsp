<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../connection/connection.jsp" %>
<%
String showtimeid=request.getParameter("showtimeid");
String query="delete from CINETIME where showtimeid='"+ showtimeid +"'";
rs=stmt.executeQuery(query);
response.sendRedirect("deleteshowtime.jsp");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Show Time Action</title>
</head>
<body>

</body>
</html>