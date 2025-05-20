<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String username=(String)session.getAttribute("username");
	String hallname=(String)session.getAttribute("theatrename");
	String moviename =(String)session.getAttribute("moviename");
	String hallid =(String)session.getAttribute("hallid");
	String showtimedate=request.getParameter("showtimedate");
	String showtime=request.getParameter("showtimename");
	String tickets=request.getParameter("tickets");
	String bookingidString=username+moviename+hallid+showtimedate+showtime;
	
	StringBuilder sb= new StringBuilder();
	for (int i= 0; i < bookingidString.length(); i++)
	   sb.append((int)bookingidString.charAt(i));
	String bookingidInitial=sb.toString();
	String bookingid=bookingidInitial.substring(0,16);

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body  {
    background-image: url("../images/book1.jpg");
    background-color: #cccccc;
}
h1 {
  color:grey;
  position:absolute;
  left:37%;
  top:35%;
}
h2 {
  color:white;
  position:absolute;
  left:38%;
  background:grey;
  padding:1%;
}

div{
   position:absolute;
   left:35%;
   top:33%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Booking Details</h2>
<h1>CINEMANIAC</h1>
<form action="#" method="post">
<div>

<label style="color:white;">You'll Watch :</label>

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=moviename %></label>
<br><br><br>
<label style="color:white;"> You'll Watch At :</label>

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=hallname %></label>
<br> <br><br>
<label style="color:white;"> Show Date :</label>

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=showtimedate %></label>
                 
<br><br><br>
<label style="color:white;"> Show Time :</label>

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=showtime %></label>
                 
<br><br><br>
<label style="color:white;"> No. of Tickets :</label>

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=tickets %></label>
                 
<br><br><br>
<label style="color:white;"> Booking Id :</label>

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=bookingid %></label>
                 
<br><br><br>



<input style="position:absolute;left:30%;color:black;background-color:white;" type="submit" name="bookticket" value="Save Details">
<a href="../index2.jsp"><button style="color:black;background-color:white;">Return Home</button></a>
</div>
</form>
</body>

</html>