<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="../connection/connection.jsp" %>

<%
int count=0;
String moviename=request.getParameter("moviename");
String hallname=request.getParameter("hallname");
String time1=request.getParameter("time1");
String time2=request.getParameter("time2");
String time3=request.getParameter("time3");
if(time2.equals(""))
{
	time2="no show";
}
if(time3.equals(""))
{
	time3="no show";
}
String query1="select * from CINETIME where hallname='" + hallname + "' ";
rs=stmt.executeQuery(query1);
String str[]=hallname.split(" ");
String str1[]=moviename.split(" ");
while(rs.next()==true)
{
	count++;
}
String showtimeid=str[0]+count+str1[0];

String query="insert into cinetime values(?,?,?,?,?,?)";
ps=con.prepareStatement(query);

ps.setString(1,moviename);
ps.setString(2,hallname);
ps.setString(3,time1);
ps.setString(4,time2);
ps.setString(5,time3);
ps.setString(6,showtimeid);
int i=ps.executeUpdate();

con.close();




%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Show Time Action Page</title>
</head>
<body bgcolor="pink">
<form action="admin1.jsp" method="post">

<p><strong>Entry of data of a new Show Time is successfully done</strong></p>
<input name="click here" value="click here" type="submit">
</form>
</body>
</html>