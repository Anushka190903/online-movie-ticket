<%
	String username=(String)session.getAttribute("username");
	if(username==null)
	{
		username="Guest";
	}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Contact Us</title>

	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/style1.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" media="all" />

</head>
<body>
<div id="header">
  <div class="shell">
    <h1 id="logo"><a href="#" style="color:#F00">CINEMANIAC <span>'Choose the best,Experience the best.'</span></a></h1>
    <div id="navigation">
      <ul>
        <li><a class="active" href="../index2.jsp" style="color:#F00"><span><center>HOME</center><em></em></span></a></li>
        <li><a href="../user/moviehome.jsp" style="color:#F00"><center>MOVIES</center><em>all running movies</em></a></li>
        <li><a href="../user/theatrehome.jsp" style="color:#F00"><center>THEATRES</center><em>best cinema halls</em></a></li>
        <li><a href="profile.jsp" style="color:#F00"><center>PROFILE</center><em>be a member</em></a></li>
        <li><a href="../register/logout.jsp" style="color:#F00"><center>LOG OUT</center><em>for existing users</em></a></li>
        <li class="last"><a href="contact2.jsp" style="color:#F00"><center>CONTACT</center><em>get in touch</em></a></li>
        
        <li class="last"><a href="#" style="color:#000000;">
        	&nbsp&nbsp &nbsp &nbsp HI <%=username %>
        </a></li>
      </ul>
      
    </div>
    <div class="cl">&nbsp;</div>
  </div>
</div>
<div class="container" style="background-color:#CFF">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
                <a></a>
                <span class="right">
                    <a>
                    </a>
                </span>
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			<header>
				<h1 style="color:#30C"><span style="color:#30C">Get in touch</span>Contact with Cinemaniac and tell us your demand,queries</h1>
            </header>       
      <div  class="form">
    		<form id="contactform" action="contactquery.jsp"> 
                
                <p class="contact">Contact us at CINEMANIAC about movies,ticket bookings,cinema halls,refreshment packages etc.
                Our customer service team is 24X7 available to attend you and help you to achieve the best quality experience with us.
                It will be our real pleasure to solve any issues that you are facing.Beacuse <strong>You</strong> are the most important for us.
                Email us with any kind of queries at <strong>queries.cinemaniac@gmail.com</strong> or submit your queries below.</p> 
                <br>
    			<input id="contact_us" name="contact_us" placeholder="submit your queries" required tabindex="2" type="text"> 
    			<input type="email" id="email1" name="email1"  placeholder="enter your email id" required> 
   <input type="hidden" name="hide" value="index2">
   <p> *We do not share your personal information with any third party</p>
   <br> 
            <input class="buttom" name="submit1" id="submit1" tabindex="5" value="Submit here" type="submit"> 	 
   </form> 
</div>      
</div>


</body>
</html>