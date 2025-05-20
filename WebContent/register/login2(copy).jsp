<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Log in Form</title>

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
        <li><a class="active" href="../index.jsp" style="color:#F00"><span><center>HOME</center><em></em></span></a></li>
        <li><a href="#" style="color:#F00"><center>MOVIES</center><em>all running movies</em></a></li>
        <li><a href="#" style="color:#F00"><center>THEATRES</center><em>best cinema halls</em></a></li>
        <li><a href="register2.jsp" style="color:#F00"><center>REGISTER</center><em>be a member</em></a></li>
        <li><a href="login2.jsp" style="color:#F00"><center>LOG IN</center><em>for existing users</em></a></li>
        <li class="last"><a href="../contact/contact.jsp"style="color:#F00"><center>CONTACT</center><em>get in touch</em></a></li>
        
        <li class="last"><a href="#" style="color:#000000;">
        	&nbsp&nbsp &nbsp &nbsp HI GUEST
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
				<h1 style="color:#30C"><span style="color:#30C">Log in here</span>Log in with Cinemaniac and continue your Movie experience</h1>
            	<h2 style="color:red">Wrong entry of username or password</h2>
            </header>       
      <div  class="form">
    		<form id="contactform" method="post" action="logincheck.jsp"> 
                
                <p class="contact"><label for="username">Username</label></p> 
    			<input id="username" name="username" placeholder="username" required tabindex="2" type="text"> 
    			 
                <p class="contact"><label for="password">Password</label></p> 
    			<input type="password" id="password1" name="password1"  placeholder="enter your password" required> 
   <br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Log me in!" type="submit"> 	
            <a href="forgotpass.jsp" >forgot password?</a> 
   </form> 
</div>      
</div>


</body>
</html>