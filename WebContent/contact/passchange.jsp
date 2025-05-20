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
<title>UPDATE PASSWORD</title>

<script type="text/javascript">


var pass="";
function validatePassword(){
	var password=document.getElementById("newpass").value;
	var len=password.length;
	var alphabet=0;
	//var checkLowerCase=0;
	//var checkSpecialCharacter=0;
	var checkNumber=0;
	//var symbols="~`!@#$%^&*-_+=[]\\\?><;,.";
	for(var i=0;i<len;i++){
		 if(password.charCodeAt(i)>=65 && password.charCodeAt(i)<=90)
			alphabet++;
		if(password.charCodeAt(i)>=97 && password.charCodeAt(i)<=122)
			alphabet++;
		/* if(symbols.indexOf(password.charAt(i))!=-1)
			alphabet++; */
		if(password.charCodeAt(i)>=48 && password.charCodeAt(i)<=57)
			checkNumber++;
	}
	if(alphabet>0 && len>=8 && checkNumber>0)
		{
			document.getElementById("password").innerHTML="Password Matched RequiredRules";
			document.getElementById("password").style.color="green";
			pass=password;
		}
	else
		{
		//if(password!=null && password!="")
		//	{
		document.getElementById("password").innerHTML="Password error";
		document.getElementById("password").style.color="red";
		//	}
		}
}

function validateConfirmPassword(){
	var confirmpassword=document.getElementById("retypepass").value;
	var password=document.getElementById("newpass").value;
	
	if(pass===confirmpassword && pass!="" && pass!=null)
	{
		document.getElementById("confirmpassword").innerHTML="Password Matched";
		document.getElementById("confirmpassword").style.color="green";
		document.getElementById("password").innerHTML="Password Matched";
		document.getElementById("password").style.color="green";
		}
	else
		{
		
		document.getElementById("confirmpassword").innerHTML="Password Not Matched";
		document.getElementById("confirmpassword").style.color="red";
		}
} 
</script>

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
				<h1 style="color:#30C"><span style="color:#30C">UPDATE PASSWORD</span></h1>
            </header>       
      <div  class="form">
    				<form id="contactform" action="passchangeDB.jsp" method="post"> 
                
                <p class="contact"><label for="newpass">New Password</label></p> 
    			<input id="newpass" name="newpass" placeholder="enter new password" required onblur="validatePassword()" tabindex="2" type="password"> 
    			 <label id="password"><br>your password should be alphanumeric</br></label>
   <br> 			 
                <p class="contact"><label for="retypepass">Re-type Password</label></p> 
    			<input type="password" id="retypepass" name="retypepass"  placeholder="re-type your password" required onblur="validateConfirmPassword()">
    			<label id="confirmpassword"></label> 
   <br><br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="UPDATE PASSWORD" type="submit">  
      </form> 
</div>      
</div>


</body>
</html>