<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@include file="../connection/connection.jsp" %>
 <%

	
	String email=request.getParameter("email");
 	String query="SELECT * FROM CINETABLE WHERE EMAIL ='"+ email +"'";
 	 
 	rs=stmt.executeQuery(query);
 	 if(rs.next()==true)
 	 {
 		 String user=rs.getString("USERNAME");
 		 String pass=rs.getString("PASSWORD");
 		
	Properties props;
	Session session1;
	props=new Properties();
	props.put("mail.smtp.host","smtp.gmail.com");
	props.put("mail.smtp.socketFactory.port","465");
	props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
	props.put("mail.smtp.auth","true");
	props.put("mail.smtp.port","465");
	session1=Session.getInstance(props,new javax.mail.Authenticator()
	{
		protected PasswordAuthentication getPasswordAuthentication()
		{
			return new PasswordAuthentication("queries.cinemaniac@gmail.com","cinemaniac1");
			
		}
	});
	//compose message
	try
	{
		MimeMessage message=new MimeMessage(session1);
		message.setFrom(new InternetAddress("queries.cinemaniac@gmail.com"));
		message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));
		message.setSubject("USERNAME && PASSWORD");
		message.setText("User Name :"+rs.getString("USERNAME")+"\nPassword : "+rs.getString("PASSWORD"));
		//message.setContent(user);
		//message.setText("Password : "+rs.getString("PASSWORD"));
		//message.setContent(pass);
		//send message
		Transport.send(message);
		//System.out.println("Message sent successfully");
	}
	catch(MessagingException me)
	{
		throw new RuntimeException(me);
	}
	session.invalidate();
	response.sendRedirect("../index.jsp");
	
 	 }
 	 else{
  		response.sendRedirect("forgotpass.jsp");
  	 }
 	 con.close();
 	
%>

