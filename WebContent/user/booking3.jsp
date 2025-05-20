<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../connection/connection.jsp" %>
<%@page import="java.util.Random"%>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%
	
	String selected=request.getParameter("selected");
	if(selected.equals(""))
		request.getRequestDispatcher("theatrehome.jsp").forward(request, response);
	Random rand=new Random();
	int n = rand.nextInt(90);
	Thread.sleep(100*n);
	String thisselect=selected;
	long pay=0;
	String username=(String)session.getAttribute("username");
	String hallname=(String)session.getAttribute("theatrename");
	String moviename =(String)session.getAttribute("moviename");
	String hallid =(String)session.getAttribute("hallid");
	String showtimedate=(String)session.getAttribute("showtimedate");
	String showtime=(String)session.getAttribute("showtime");
	String tickets=request.getParameter("tickets");
	String bookingidString=username.substring(0,3)+rand.nextInt(90)+thisselect.substring(0,3)+showtimedate.substring(0,3)+showtime+moviename+hallid;
	int count=0,count1=0;
	StringBuilder sb= new StringBuilder();
	for (int i= 0; i < bookingidString.length(); i++)
	   sb.append((int)bookingidString.charAt(i));
	String bookingidInitial=sb.toString();
	String bookingid=bookingidInitial.substring(0,16);
	char payment[]=thisselect.toCharArray();
	for(int p=0;p<thisselect.length();p++)
	{
		if(payment[p]=='d')
		{
			pay=pay+150;
		}
		if(payment[p]=='g')
		{
			pay=pay+120;
		}
		if(payment[p]=='s')
		{
			pay=pay+100;
		}
		
	}
	String ticketcount[]=thisselect.split(",");
	pay=pay+(ticketcount.length*10);
	String payString=String.valueOf(pay);
	String query="SELECT * FROM CINESEAT WHERE BOOKDATE='"+ showtimedate +"' AND BOOKTIME='"+ showtime +"' AND HALLID='"+ hallid +"'" ;
	rs=stmt.executeQuery(query);
	 if(rs.next()==true)
	 {
		String seats=rs.getString(2);
		String check1[]=seats.split(",");
		String check2[]=selected.split(",");
		for(int a=0;a<check1.length;a++)
			for(int b=0;b<check2.length;b++)
				if(check1[a].equals(check2[b]))
					request.getRequestDispatcher("oops.jsp").forward(request, response);
		
		selected=seats+","+selected;
		String query1="UPDATE CINESEAT SET seatno=? WHERE bookdate ='"+ showtimedate +"' AND booktime='"+showtime+"' AND hallid='"+hallid+"'";
		ps=con.prepareStatement(query1);
		ps.setString(1,selected);
		int i=ps.executeUpdate();
		
	 }
	 else
	 {
	    String query2="INSERT into CINESEAT(hallid,seatno,bookdate,booktime) VALUES(?,?,?,?)";
		ps=con.prepareStatement(query2);
		ps.setString(1,hallid);
	    ps.setString(2,selected);
		ps.setString(3,showtimedate);
	    ps.setString(4,showtime);	
	    int i=ps.executeUpdate();
	 }
	 
	 ResultSet rs1=null;
	 Statement stmt1=null;
	 stmt1=con.createStatement();
	 String queryid="Select * from cineconfirm where username='"+ username +"'";
	 rs1=stmt1.executeQuery(queryid);
	 while(rs1.next()==true)
	 {
		 count++;
	 	if(rs1.getString("bookingid").equals(bookingid))
	 	{
	 		long id=Long.parseLong(bookingid);
	 		id=id+1;
	 		bookingid=Long.toString(id);
	 	}
	 }
	 bookingid=bookingid+count;
	 String queryconfirm="insert into cineconfirm values(?,?,?,?,?,?,?,?)";
	 ps=con.prepareStatement(queryconfirm);
	 ps.setString(1,bookingid);
	 ps.setString(2,username);
     ps.setString(3,hallid);
	 ps.setString(4,showtimedate);
	 ps.setString(5,showtime);
	 ps.setString(6,thisselect);
	 ps.setString(7, payString);
	 ps.setString(8, moviename);
	 int j=ps.executeUpdate();
	 con.close();
	
	
	
%>
<%
	Properties props;
	Session session1;
	String to=(String)session.getAttribute("email");
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
		message.setSubject("Booking Confirmation");
		message.setText("Your Booking Details-\n"+"Movie Name- "+moviename+"\n"+" Theatre Name- "+hallname+"\n"+" Date of Booking- "+showtimedate+"\n"+" Show Time- "+showtime+"\n"+" Number of Tickets- "+ticketcount.length+"\n"+" Booked Seats- "+thisselect+"\n"+" Booking Id- "+bookingid+"\n"+" Ticket Cost- "+payString+"/-"+"\n"+"Enjoy your Show");
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
<title>Cinemaniac Booking Details</title>
</head>
<body>
<h2>Booking Details</h2>
<h1>CINEMANIAC</h1>

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

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=ticketcount.length %></label>
                 
<br><br><br>
<label style="color:white;"> Booked Seats  :</label>

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=thisselect%></label>
                 
<br><br><br>
<label style="color:white;"> You'll Pay :</label>

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=pay+"/-" %></label>
                 
<br><br><br>

<label style="color:white;"> Booking Id :</label>

<label style="color:white;font-weight:bold;background-color:grey;border:solid black 1px;"> <%=bookingid %></label>
                 
<br><br><br>



<form action="../index2.jsp" method="post">
<input style="position:absolute;left:30%;color:black;background-color:white;" type="submit" name="bookticket" value="Details are sent at your email address">
<input type="submit" value="return">
</form>
</div>

</body>

</html>