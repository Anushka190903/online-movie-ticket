<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../connection/connection.jsp" %>
<%
int count=0,flag=0;
String newlang="NULL";
String moviename=request.getParameter("moviename");
String movielang=request.getParameter("movielang");
String movieimage=request.getParameter("movieimage");
String releasedate=request.getParameter("releasedate");
String query1="select * from CINEMOVIE where movielang='" + movielang + "' ";
rs=stmt.executeQuery(query1);
if(movielang.equals("other"))
{
	String str[]=moviename.split(":");
	newlang=new String(str[1]);
	flag=1;
}

while(rs.next()==true)
{
	count++;
}
String str1[]=moviename.split(" ");
String movieid=movielang+count+str1[0];

String query2="insert into cinemovie values(?,?,?,?,?)";
ps=con.prepareStatement(query2);

ps.setString(1,moviename);
if(flag==0)
	ps.setString(2,movielang);
else
	ps.setString(2,newlang);
ps.setString(3,movieimage);
ps.setString(4,releasedate);
ps.setString(5,movieid);

int i=ps.executeUpdate();

con.close();


%>    
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Movie Action Page</title>
</head>
<body bgcolor="pink">
<form action="admin1.jsp" method="post">
<p><strong>Entry of data of a new Movie is successfully done</strong></p>
<input name="click here" value="click here" type="submit">
</form>
</body>
</html>