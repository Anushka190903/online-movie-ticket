<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@ include file="../connection/connection.jsp" %>

<%
		
	/*public static void main (String s[]) throws Exception
	{*/
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		//String birthmonth=request.getParameter("BirthMonth");
		String birthday=request.getParameter("birthday");
		//String birthyear=request.getParameter("BithYear");
		//String birthdate=birthmonth+""+birthday+""+birthyear+"";
		String gender=request.getParameter("gender");
		String phone=request.getParameter("phone");
		String conpass=request.getParameter("repassword");
		int checkNumber=0;
		String regex = "(.)*(\\d)(.)*";       
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(password);
        boolean atleastOneAlpha = password.matches(".*[a-zA-Z]+.*");
        boolean isMatched = matcher.matches();
		if(password.length()>7==false)
			request.getRequestDispatcher("register2(copy).jsp").forward(request, response);
		else  if (isMatched==false || atleastOneAlpha==false) 
		{
			request.getRequestDispatcher("register2(copy).jsp").forward(request, response);
		}
		else
		{
		
		/*int pubkey=10;//from here
		StringBuilder sb= new StringBuilder();
		for (int i= 0; i < password.length(); i++)
		   sb.append((int)password.charAt(i));
		String newpass=sb.toString();
		newpass=newpass.substring(0,16);
		long id=Long.parseLong(newpass);
 		id=id+pubkey;
 		newpass=Long.toString(id);
 		StringBuilder sb1= new StringBuilder();
		for (int i= 0; i < conpass.length(); i++)
		   sb1.append((int)conpass.charAt(i));
		String newconpass=sb.toString();
		newconpass=newconpass.substring(0,20);
		long idcon=Long.parseLong(newconpass);
 		idcon=idcon+pubkey;
 		newconpass=Long.toString(idcon);//to here
		*/
		ResultSet rs1=null;
 		Statement stmt1=null;
 		String query1="select * from cinetable";
 		stmt1=con.createStatement();
 		rs1=stmt1.executeQuery(query1);
 		while(rs1.next()==true)
 		{
 			if(username.equals(rs1.getString(3)))
 				request.getRequestDispatcher("register2(copy).jsp").forward(request, response);
 			if(email.equals(rs1.getString(2)))
 				request.getRequestDispatcher("register2(copy).jsp").forward(request, response);
 		}
 		
		rs=stmt.executeQuery(query1);
		String query="insert into cinetable values(?,?,?,?,?,?,?)";
		ps=con.prepareStatement(query);
		if(conpass.equals(password))
		{
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,username);
		ps.setString(4,password);
		ps.setString(5,birthday);
		ps.setString(6,gender);
		ps.setString(7,phone);
		
		int i=ps.executeUpdate();
		
		con.close();
		}
		else
		{
			response.sendRedirect("register2(copy).jsp");
			}
	/*	}
} */}
		//session.setAttribute("username",username);
%>
<%
	Properties props;
	Session session1;
	String to=request.getParameter("email");
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
		message.setSubject("Hello");
		message.setText("Your Registration is Successfully Done!");
		//send message
		Transport.send(message);
		System.out.println("Message sent successfully");
	}
	catch(MessagingException me)
	{
		throw new RuntimeException(me);
	}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Successful</title>
</head>
<body bgcolor="green">
<form action="login2.jsp" method="get">
<p><strong>You have successfully registered with Cinemaniac</strong></p>
<p style="fontcolor:green"><strong>Please check the email sent from us for confirmation</strong></p>
<input name="click here" value="click here" type="submit">
</form>
</body>
</html>