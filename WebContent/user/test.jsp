<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../connection/connection.jsp" %>
<%
ResultSet rs1=null,rs2=null;
Statement stmt1=null,stmt2=null;
String loc=request.getParameter("location");
String uname=(String)session.getAttribute("username");
String query="select * from cinehall where halllocation='"+ loc +"'";
String moviename=(String)session.getAttribute("moviename");
rs=stmt.executeQuery(query);

%>

<!DOCTYPE HTML>
<html>
<head>	
<title> Theatres of your Location</title>
<link href="css/style3.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" /> -->
<!--[if IE 6]><link rel="stylesheet" href="css/ie.css" type="text/css" media="all" /><![endif]-->
<style type="text/css">
tr:hover {background-color:#f5f5f5;}
td:hover{background-color:yellow;}
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div id="header" style="background-image:url(images/hulk%20-%20Copy.jpg)">
  <div class="shell">
    <h1 id="logo"><a href="#" style="color:#F00">CINEMANIAC <span>Choose the best.Experience the best.</span></a></h1>
    <div id="navigation">
      <ul>
        <li><a class="active" href="../index2.jsp" style="color:#F00"><span><center>HOME</center><em></em></span></a></li>
        <li><a href="moviehome.jsp" style="color:#F00"><center>MOVIES</center><em>all running movies</em></a></li>
        <li><a href="theatrehome.jsp" style="color:#F00"><center>THEATRES</center><em>best cinema halls</em></a></li>
        <li><a href="../contact/profile.jsp" style="color:#F00"><center>PROFILE</center><em>be a member</em></a></li>
        <li><a href="../register/logout.jsp" style="color:#F00"><center>LOG OUT</center><em>for existing users</em></a></li>
        <li class="last"><a href="contact/contact2.jsp" style="color:#F00"><center>CONTACT</center><em>get in touch</em></a></li>
        
        <li class="last"><a href="#" style="color:#000000;">
        	&nbsp&nbsp &nbsp &nbsp Hi <%=uname %>
        </a></li>
      </ul>
      
    </div>
    <div class="cl">&nbsp;</div>
  </div>
</div>
  <div class="wrap" align="left">
        <div class="sidebar" align="left">
                
            
        </div>
            <div class="content" style="width:100%;background-image:url(images/hulk%20-%20Copy.jpg">
                <div class="clear"></div>
                <div align="left">
                <div>
                    
                  <!-- Write in this division -->
  
                    <h4><label><%=loc %></label></h4><a href="theatrehome.jsp"><label>Change</label></a>
                  <!-- Write in this division -->
                  <h1 align="center" style="color:black">Theatres of Your Choice</h1>
<br><br>

<table align="center" style="text-align:center;border: 1px solid black">
<tr align="center" style="text-align:center;border: 1px solid black;background-color:brown">
	<th style="color:white;font-weight:bold" >Hall Name</th>

	<th style="color:white;font-weight:bold">Hall Location</th>
	
     <th style="color:white;font-weight:bold">Hall Address</th>
	
	<th style="color:white;font-weight:bold" colspan=>Hall Contact</th>
	<th>&nbsp &nbsp</th>
</tr>

<% while(rs.next()==true)
	{
	
		if(moviename.equals("nothing")==false)
		{
			String hallname=rs.getString(1);
			String query1="select * from cinetime where moviename='"+ moviename +"' AND hallname='" + hallname + "'";
			stmt1=con.createStatement();
			rs1=stmt1.executeQuery(query1);
			while(rs1.next()==true)
			{
				String hallname1=rs1.getString(2);
				String query2="select * from cinehall where hallname='"+ hallname1 +"'";
			    stmt2=con.createStatement();
				rs2=stmt2.executeQuery(query2);
				while(rs2.next()==true)
				{
					%>
<form action="moviefromtheatre.jsp" method="post">	
	<tr  style="hover:true;vertical-align:middle;border: 1px solid black">
	<td style="background-color:pink;vertical-align:middle;padding:5px;color:red;font-weight:bold;border: 1px solid black"><%=rs2.getString(1)%></td>
	<input type="hidden" name="theatrename" value="<%=rs2.getString(1)%>">
	<input type="hidden" name="hallid" value="<%=rs2.getString(5)%>">
	<td style="vertical-align:middle;padding:5px;color:red;border: 1px solid black"><%=rs2.getString(2)%></td>
	
	<td style="vertical-align:middle;padding:5px;color:black;border: 1px solid black;width:40%"><%=rs2.getString(3)%></td>
	
	<td style="vertical-align:middle;padding:5px;color:red;border: 1px solid black"><%=rs2.getString(4)%></td>
	
	<td style="vertical-align:middle;padding:5px;color:red;border: 1px solid black"><p align="center"><input type="submit" style="align:center;color:red;padding:2px;font-weight:bold" name="theatrebook" value=" Book Ticket "></p><input type="hidden" value="<%= rs2.getString(1) %>"  name="hallname"></td>
    	
	</tr>
	</form>
					
					
					<% 
				}
			
			}
		}
		else
		{
	%>
<form action="moviefromtheatre.jsp" method="post">	
	<tr  style="hover:true;vertical-align:middle;border: 1px solid black">
	<td style="background-color:pink;vertical-align:middle;padding:5px;color:red;font-weight:bold;border: 1px solid black"><%=rs.getString(1)%></td>
	<input type="hidden" name="theatrename" value="<%=rs.getString(1)%>">
	<input type="hidden" name="hallid" value="<%=rs.getString(5)%>">
	<td style="vertical-align:middle;padding:5px;color:red;border: 1px solid black"><%=rs.getString(2)%></td>
	
	<td style="vertical-align:middle;padding:5px;color:black;border: 1px solid black;width:40%"><%=rs.getString(3)%></td>
	
	<td style="vertical-align:middle;padding:5px;color:red;border: 1px solid black"><%=rs.getString(4)%></td>
	
	<td style="vertical-align:middle;padding:5px;color:red;border: 1px solid black"><p align="center"><input type="submit" style="align:center;color:red;padding:2px;font-weight:bold" name="theatrebook" value=" Book Ticket "></p><input type="hidden" value="<%= rs.getString(1) %>"  name="hallname"></td>
    	
	</tr>
	</form>
<% } 

}


%>
</table>

<br> <br>
</div>  
 <div class="clear"></div>                
                  
                
            
</body>
<%
con.close();
%>
</html>
