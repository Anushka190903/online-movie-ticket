<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../connection/connection.jsp" %>
<%
String moviename;
ResultSet rs1=null,rs2=null;
Statement stmt1=null,stmt2=null;
stmt1=con.createStatement();
stmt2=con.createStatement();
String movieid=request.getParameter("movieid");
String query="delete from CINEMOVIE where movieid='"+ movieid +"'";
String query1="select * from cinemovie where movieid='" + movieid +"'";

rs1=stmt.executeQuery(query1);
while(rs1.next()==true)
{
	moviename=rs1.getString(1);
	String query2="delete from cinetime where moviename='"+ moviename +"'";
	rs2=stmt2.executeQuery(query2);
}
rs=stmt.executeQuery(query);
response.sendRedirect("deletemovie.jsp");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Movie Action</title>
</head>
<body>

</body>
</html>