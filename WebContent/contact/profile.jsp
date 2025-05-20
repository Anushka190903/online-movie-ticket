<%
	String username=(String)session.getAttribute("username");
	String email=(String)session.getAttribute("email");
    String name=(String)session.getAttribute("name");
    String birthdate=(String)session.getAttribute("birthdate");
    String gender=(String)session.getAttribute("gender");
    String phonenumber=(String)session.getAttribute("phonenumber");
    
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>PROFILE</title>

	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/style1.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" media="all" />
<script>
var dt = new Date();
document.getElementById("datetime").innerHTML = dt.toLocaleString();
</script>


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
				<h1 style="color:#30C"><span style="color:#30C">Cinemaniac</span>Your Profile</h1>
            </header>       
      <div  class="form">
    		<form id="contactform" action="proupdate.jsp" method="post"> 
               
               <p class="contact"><label for="username">Username</label></p> 
    			<label id="username" name="username"><%=username%></label>
               <br><br>
               <p class="contact"><label for="email">Email</label></p> 
    			<label id="email" name="email3"><%=email %> </label>
    			
               <p class="contact"><label for="name">Name</label></p> 
    			<input id="name" name="name3" value="<%=name %>"  type="text">
    			 <br> <br>
                <p class="contact"><label>Birthdate</label></p> 
    			<input type="date" id="n5" name="birthdate3" value="<%=birthdate %>"> 
                
                <p class="contact"><label><br>Gender</label></p> 
    			<input type="text" id="n6" name="gender3" value="<%=gender %>">
           
            <p class="contact"><label for="phone">Phone Number</label></p> 
            <input id="phone" name="phone3" value="<%=phonenumber %>"> <br>
           
           
           <p><a href="passchange.jsp" >click to change password</a></p>
           <br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="SAVE" type="submit"> 	 
      </form> 
</div>      
</div>


</body>
</html>