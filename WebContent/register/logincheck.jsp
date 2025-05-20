<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="../connection/connection.jsp" %>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%

 String username=request.getParameter("username");
 String password=request.getParameter("password1");
 
 	/* int pubkey=10;//from here
	StringBuilder sb= new StringBuilder();
	for (int i= 0; i < password.length(); i++)
	   sb.append((int)password.charAt(i));
	String newpass=sb.toString();
	newpass=newpass.substring(0,16);
	long id=Long.parseLong(newpass);
	id=id+pubkey;
	newpass=Long.toString(id);//to here*/
 
 String query="SELECT * FROM CINETABLE WHERE USERNAME='"+ username +"' AND PASSWORD='"+ password +"'" ;
 rs=stmt.executeQuery(query);
 if(rs.next()==true)
 {
	 if(username.equals("admin"))
	 {
		 session.setAttribute("username",username);
		 response.sendRedirect("../admin/admin1.jsp");
	 }
	 else
	 {
	 session.setAttribute("username",username);
	 session.setAttribute("email",rs.getString("email"));
	 session.setAttribute("name",rs.getString("name"));
	 session.setAttribute("birthdate",rs.getString("birthdate"));
	 session.setAttribute("gender",rs.getString("gender"));
	 session.setAttribute("phonenumber",rs.getString("phonenumber"));
	 response.sendRedirect("../index2.jsp");
	 }
 }
 else
 {
	 response.sendRedirect("login2(copy).jsp");
 }
 
%>