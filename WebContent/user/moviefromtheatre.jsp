<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="../connection/connection.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	
	String nothing="nothing";
	String username=(String)session.getAttribute("username");
	String hallname=request.getParameter("theatrename");
	String hallid=request.getParameter("hallid");
	session.setAttribute("hallid", hallid);
	session.setAttribute("theatrename",hallname);
	String moviename=(String)session.getAttribute("moviename");
	if(username.equals(null))
	{
		response.sendRedirect("../register/login2.jsp");
	}	
	
	if(nothing.equals(moviename)==false)
	{
		response.sendRedirect("booking1.jsp");
	}
	else
	{
	
%>
 
    
<%
	
	ResultSet rs1=null;
	Statement stmt1=null;
	 stmt1=con.createStatement();
	String theatrename=request.getParameter("theatrename");
	String query="select * from cinetime where hallname='"+theatrename+"' ";
	rs=stmt.executeQuery(query);
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movie in <%=theatrename %></title>
<script>
var dt = new Date();
document.getElementById("datetime").innerHTML = dt.toLocaleString();
</script>
<link href="css/style3.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" /> -->
<!--[if IE 6]><link rel="stylesheet" href="css/ie.css" type="text/css" media="all" /><![endif]-->


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
        <li class="last"><a href="../contact/contact2.jsp" style="color:#F00"><center>CONTACT</center><em>get in touch</em></a></li>
        
        <li class="last"><a href="#" style="color:#000000;">
        	&nbsp&nbsp &nbsp &nbsp Hi <%=username %>
        </a></li>
      </ul>
      
    </div>
    <div class="cl">&nbsp;</div>
  </div>
</div>



    <div class="wrap">
       
            <div class="content" style="position: absolute;
    top: 20%;
    left: 15%; right:10%;">
                <div class="clear"></div>
       
       
<%


	while(rs.next()==true)
	{
		String moviename1=rs.getString(1);
		String query1="select * from cinemovie where moviename='"+ moviename1 +"' ";

		rs1=stmt1.executeQuery(query1);



    

	while(rs1.next()==true) 
	{
		String image=rs1.getString("movieimage");

		String str[]=image.split("user");
		String str1="";
		for(int i=0;i<str.length;i++)
		{
	
		if(i==1)
		str1=str[i];
	
		}	

	
%>
       
                <div class="list2">
                <div class="preview"><a><img src="..\user<%=str1 %>" alt="" /></a>
                <span><%=rs1.getString(2)%></span></div>
                <form action="booking1.jsp" method="post">
                <div class="data">
                    <ul>
                        <span ><%=rs1.getString(1) %></span>
                        <input type="hidden" name="moviename1" value="<%=rs1.getString(1) %>">
                        <li style="font-weight: bold"><%=rs1.getString(2)%></li>
                        <li style="font-style:italic">Release Date</li>
                        <li><p id="releasedate" style="font-weight: bold"><%=rs1.getString(4)%></p></li>
                        <li><a href="#">Reviews</a></li>
                        <br>
                        <a href="#"><li><form action="" pos="method"><input type="submit"  value="Book Ticket" style="background-color:cyan;border-radius:12px;border: 2px solid #000000;font-size:15px;padding: 10px 24px;color:red;font-weight:bold;"></form></li></a>
                        
                    </ul>
                </div>
                </form>
            <div class="clear"></div>
            </div>
               <%  
}
	}

%>
                <div class="clear"></div>
                  
            </div>
        </div>
    <div class="clear"></div>
    
   

<%
	}
con.close();
%>


</body>
</html>