<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>

<%
	int flag=0;
	String redi=request.getParameter("hide");
	if(redi.equals("index2"))
			flag=2;
	else
		flag=1;

	Properties props;
	Session session1;
	String to="queries.cinemaniac@gmail.com";
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
		message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
		message.setSubject("CUSTOMER QUERIES");
		message.setText("Queries From :"+request.getParameter("email1")+"\n\n"+"Queries:"+request.getParameter("contact_us"));
		//send message
		Transport.send(message);
		System.out.println("Message sent successfully");
	}
	catch(MessagingException me)
	{
		throw new RuntimeException(me);
	}
	
	if(flag==1)
		response.sendRedirect("../index.jsp");
	else
		response.sendRedirect("../index2.jsp");
	
%>