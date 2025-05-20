<%@ include file="../connection/connection.jsp" %>
<%
	String hallid=request.getParameter("hallid");
	String totalseats=request.getParameter("totalseats");
    String sections=request.getParameter("sections");
    String capacity1=request.getParameter("capacity1");
    String capacity2=request.getParameter("capacity2");
    String capacity3=request.getParameter("capacity3");
	String query="insert into cinebook values(?,?,?,?,?,?)";
	String booked="0";
	
		ps=con.prepareStatement(query);

		//ps.setString(1,moviename);
		//ps.setString(2,hallname);
		ps.setString(1,hallid);
		ps.setString(2,totalseats);
		ps.setString(3,sections);
		ps.setString(4,capacity1);
		ps.setString(5,capacity2);
		ps.setString(6,capacity3);
		int result=ps.executeUpdate();
		
		response.sendRedirect("admin1.jsp");
	
	
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seat Details Added</title>
</head>
<body>

</body>
</html>