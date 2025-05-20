<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="../connection/connection.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%!
/* private static String algorithm = "DESede";
private static Key key = null;
private static Cipher cipher = null;


 private static byte[] encrypt(String input)throws Exception {
            cipher.init(Cipher.ENCRYPT_MODE, key);
            byte[] inputBytes = input.getBytes();
            return cipher.doFinal(inputBytes);
        } */
%>
<%!
 /*       private static String decrypt(byte[] encryptionBytes)throws Exception {
            cipher.init(Cipher.DECRYPT_MODE, key);
            byte[] recoveredBytes =  cipher.doFinal(encryptionBytes);
            String recovered =  new String(recoveredBytes);
            return recovered;
          } */
          %>
<%
/*	String algorithm = "DESede";
	key = KeyGenerator.getInstance(algorithm).generateKey();
    cipher = Cipher.getInstance(algorithm);
	String samik="avik ganguly";
	byte[] encryptionBytes = encrypt(samik);
    String passw=new String(encryptionBytes);
	Calendar cal= Calendar.getInstance();
	cal.add(Calendar.DAY_OF_MONTH,-5);
	Date date1=cal.getTime();
	SimpleDateFormat format= new SimpleDateFormat("dd/MM/YYYY");
	String a=format.format(date1);
	date1=format.parse(a);
	String bookdate="null";
	Date bookdate1=null;
	String query="select * from cineconfirm";
	rs=stmt.executeQuery(query);
	while(rs.next()==true)
	{
		bookdate=rs.getString(4);
		bookdate1=format.parse(bookdate);
		//if(a.compareToIgnoreCase(bookdate))
		//{
		//	String query1="delete from cineconfirm where date='" + bookdate + "'";
		//}
		*/
	 //}

%>

<%
	Date date=new Date();
	String a=new String();
	SimpleDateFormat format= new SimpleDateFormat("dd/MM/YYYY");
	a=format.format(date);
	String today[]=a.split("/");
	int toyear= Integer.parseInt(today[2]);
	String query="select * from cineconfirm";
	String query1="select * from cineseat";
	ResultSet rs1=null;
	Statement stmt1=null;
	rs=stmt.executeQuery(query);
	stmt1=con.createStatement();
	
	while(rs.next()==true)
	{
		
		String bookdate=rs.getString("showtimedate");
		String bookdatearray[]=bookdate.split("/");
		int year=Integer.parseInt(bookdatearray[2]);
		if(year<toyear )
		{
			String querydel="delete from cineconfirm where showtimedate='"+ bookdate +"'";
			rs1=stmt1.executeQuery(querydel);
		}
	}
	rs=stmt.executeQuery(query1);
	stmt1=con.createStatement();
	while(rs.next()==true)
	{
		
		String bookdate=rs.getString("bookdate");
		String bookdatearray[]=bookdate.split("/");
		int year=Integer.parseInt(bookdatearray[2]);
		if(year<toyear )
		{
			String querydel="delete from cineseat where bookdate='"+ bookdate +"'";
			rs1=stmt1.executeQuery(querydel);
		}
	}
	con.close();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Entries Deleted from Booking Id Table</title>
</head>
<body>
<h3 align="center"> Old Entries are deleted </h3>
<a href="admin1.jsp"><button style="position:absolute; top:20%;left:47%">Click here</button></a>
</body>
</html>