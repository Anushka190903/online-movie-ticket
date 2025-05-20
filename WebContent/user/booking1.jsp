<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ include file="../connection/connection.jsp" %>
 <%
 	Date date=new Date();
 	Date date1=new Date();
 	Date date2=new Date();
 	Date date3=new Date();
  	Calendar cal= Calendar.getInstance();
    cal.add(Calendar.DATE, +1);
    date1=cal.getTime();
    cal.add(Calendar.DATE, +1);
    date2=cal.getTime();
    cal.add(Calendar.DATE, +1);
 	date3=cal.getTime();
	String a=new String();
	String b=new String();
	String c=new String();
	String d=new String();
	SimpleDateFormat format= new SimpleDateFormat("dd/MM/YYYY");
	a=format.format(date);
	b=format.format(date1);
	c=format.format(date2);
	d=format.format(date3);
%>
<%
	String username=(String)session.getAttribute("username");
	if(username==null)
	{
		response.sendRedirect("../index.jsp");
	}
	String theatrename=(String)session.getAttribute("theatrename");
	String moviename=(String)session.getAttribute("moviename");
	if(moviename.equals("nothing"))
	{
		moviename=request.getParameter("moviename1");
		session.setAttribute("moviename",moviename);
	}
%>
<%
	ResultSet rs1=null;
	Statement stmt1=null;
	stmt1=con.createStatement();
	String query="select * from cinetime where moviename='"+ moviename +"' AND hallname='" + theatrename +"'";
	rs=stmt.executeQuery(query);
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter Booking Details</title>
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
</head>
<body>
<a href="../index2.jsp"><button style="color:black;background-color:white;">Return</button></a>
<h2>Booking Details</h2>
<h1>CINEMANIAC</h1>
<%
while(rs.next()==true)
{
%>
<form id="showdetails" action="booking2.jsp" method="post">
<div style="position:middle;">

<label style="color:white;">You'll Watch :</label>

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=rs.getString(1) %></label>
<br><br><br>
<label style="color:white;"> You'll Watch At :</label>

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=rs.getString(2) %></label>
<br> <br><br>
<label style="color:white;">Select Date :</label>
<select id="showtimedate" name="showtimedate" required>
    			<option value="">Select here</option>
    			<option value="<%=a %>"><%=a %></option>
    			<option value="<%=b %>"><%=b %></option>
    			<option value="<%=c %>"><%=c%></option>
    			<option value="<%=d %>"><%=d %></option>
    			</select>
    			<br><br><br>
<label style="color:white;">Select Show Time :</label>
    			<select id="showtimename" name="showtimename" required >
    			<option value="">Select here</option>
                  <option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>
                  <%
                  String time2=rs.getString(4);
                  String time3=rs.getString(5);
                  if(time2.equals("no show")==false)
                  {
                  %>
                  <option value="<%=rs.getString(4)%>"><%=rs.getString(4)%></option>
                  <%}
                  
                  if(time3.equals("no show")==false)
                  {
                  %>
                  <option value="<%=rs.getString(5)%>"><%=rs.getString(5)%></option>
                   <%
                   }
                   %>   
                  </select>
                  <br>
                  <p id="timeconfirmation" style="color:skyblue;">*Please select the show-time carefully</p>
                  
<br><br><br>
<input style="position:absolute;left:30%;color:red;background-color:skyblue;border:solid black 1px;" type="submit" name="bookticket" value="Let me Book">

</div>
</form>
<%
}
%>
</body>
<%
con.close();
%>
</html>