<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String hallid=request.getParameter("hallid");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<body bgcolor="pink" align="center">
<form action="addseatdetails.jsp" method="post">
<div align="center">
<p>Hall ID :</p>
<input type="text" name="hallid" value="<%= hallid %>" readonly>
<p>Total Seats </p>
<input type="text" name="totalseats" placeholder="Enter total seats" required>
<p>No. of Sections :</p>
<select name="sections"> 
<option>select</option>
<option>1</option>
<option>2</option>
<option>3</option>
</select>
<p>Section 1 Capacity </p>
<input type="text" name="capacity1" placeholder="Enter total seats" required>
<p>Section 2 Capacity (Enter 0 if NA) </p>
<input type="text" name="capacity2" placeholder="Enter total seats" required>
<p>Section 3 Capacity(Enter 0 if NA)</p>
<input type="text" name="capacity3" placeholder="Enter total seats" required>
<br><br>
<input name="click here" value="click here" type="submit">
</div>
</form>
</body>

</body>
</html>