<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration Form</title>

<script type="text/javascript">

//document.writeln("hello");

var pass="";
function validatePassword(){
	var password=document.getElementById("n5").value;
	var len=password.length;
	var checkUpperCase=0;
	var checkLowerCase=0;
	var checkSpecialCharacter=0;
	var checkNumber=0;
	var symbols="~`!@#$%^&*-_+=[]\\\?><;,.";
	for(var i=0;i<len;i++){
		//if(password.charCodeAt(i)>=65 && password.charCodeAt(i)<=90)
			//checkUpperCase++;
		//if(password.charCodeAt(i)>=97 && password.charCodeAt(i)<=122)
		//	checkLowerCase++;
		//if(symbols.indexOf(password.charAt(i))!=-1)
			//checkSpecialCharacter++;
		if(password.charCodeAt(i)>=48 && password.charCodeAt(i)<=57)
			checkNumber++;
	}
	if(len>=8 && checkNumber>0)
		{
			document.getElementById("password").innerHTML="Password Matched Required Rules";
			document.getElementById("password").style.color="green";
			pass=password;
		}
	else
		{
		if(password!=null && password!="")
			{
		document.getElementById("password").innerHTML="Atleast 8 characters needed. Your password should be alphanumeric.";
		document.getElementById("password").style.color="red";
			}
		}
}

function validateConfirmPassword(){
	var confirmpassword=document.getElementById("n6").value;
	var password=document.getElementById("n5").value;
	
	if(pass===confirmpassword && pass!="" && pass!=null)
	{
		document.getElementById("confirmpassword").innerHTML="Password Matched";
		document.getElementById("confirmpassword").style.color="green";
		document.getElementById("password").innerHTML="Password Matched";
		document.getElementById("password").style.color="green";
		}
	else
		{
		if(pass!="" && pass!=null)
			{
			document.getElementById("confirmpassword").innerHTML="Password Not Matched";
			document.getElementById("confirmpassword").style.color="red";
			}
			//document.getElementById("password").innerHTML="Password Not Matched";
			//document.getElementById("password").style.color="red";	
			
		}
}

var request;  
function sendInfo()  
{  
	var v=document.contactform.username.value;  
	var url="registercheckusername.jsp?val="+v;  
	if(window.XMLHttpRequest)
	{  
		request=new XMLHttpRequest();  
	}  
	else if(window.ActiveXObject)
	{  
		request=new ActiveXObject("Microsoft.XMLHTTP");  
	}  
	try
	{  
		request.onreadystatechange=getInfo;  
		request.open("GET",url,true);  
		request.send();  
	}
	catch(e)
	{
		alert("Unable to connect to server");
	}  
}  

function getInfo()
{  
	if(request.readyState==4)
	{  
		var val=request.responseText;  
		document.getElementById('usernameconfirmation').innerHTML=val;  
	}  

}

function sendInfoEmail()  
{  
	var v=document.getElementById("email").value  
	var url="registercheckemail.jsp?val="+v;  
	if(window.XMLHttpRequest)
	{  
		request=new XMLHttpRequest();  
	}  
	else if(window.ActiveXObject)
	{  
		request=new ActiveXObject("Microsoft.XMLHTTP");  
	}  
	try
	{  
		request.onreadystatechange=getInfoEmail;  
		request.open("GET",url,true);  
		request.send();  
	}
	catch(e)
	{
		alert("Unable to connect to server");
	}  
}  

function getInfoEmail()
{  
	if(request.readyState==4)
	{  
		var val=request.responseText;  
		document.getElementById('emailconfirmation').innerHTML=val;  
	}  

}

function checkData()
{
	var value1=document.getElementById('usernameconfirmation').value;
	var value2=document.getElementById('emailconfirmation').value;
	
	if(value1.equals("Please enter an username") || value2.equals("Please enter your email id") || value1.equals("") || value2.equals("") )
		document.getElementById("submit").setAttribute("disabled", "disabled");
	else
		document.getElementById("submit").removeAttribute("disabled");
	     
}



</script>

	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/style1.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" media="all" />

</head>
<body bgcolor="#000000">
<div id="header">
  <div class="shell">
    <h1 id="logo"><a href="#" style="color:#F00">CINEMANIAC <span>'Choose the best,Experience the best.'</span></a></h1>
    <div id="navigation">
      <ul>
        <li><a class="active" href="../index.jsp" style="color:#F00"><span><center>HOME</center><em></em></span></a></li>
        <li><a href="login2.jsp" style="color:#F00"><center>MOVIES</center><em>all running movies</em></a></li>
        <li><a href="login2.jsp" style="color:#F00"><center>THEATRES</center><em>best cinema halls</em></a></li>
        <li><a href="register2.jsp" style="color:#F00"><center>REGISTER</center><em>be a member</em></a></li>
        <li><a href="login2.jsp" style="color:#F00"><center>LOG IN</center><em>for existing users</em></a></li>
        <li class="last"><a href="../contact/contact.jsp" style="color:#F00"><center>CONTACT</center><em>get in touch</em></a></li>
        
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
				<h1 style="color:#30C"><span style="color:#30C">Registration</span>Register with Cinemaniac and continue your Movie experience</h1>
				<h2 style="color:red;">Sorry! There was a problem. Please fill credentials correctly.</h2>
            </header>       
      <div  class="form">
    		<form id="contactform" name="contactform" method="post" action="registerDB.jsp"> 
    			<p class="contact"><label for="name">Name</label></p> 
    			<input id="name" name="name" placeholder="First and last name" required tabindex="1" type="text"> 
    			 
    			<p class="contact"><label for="email">Email</label></p> 
    			<input id="email" name="email" placeholder="example@domain.com" required type="text" onchange="sendInfoEmail()"> 
                <br><span id="emailconfirmation"></span>
                <p class="contact"><label for="username">Create a username</label></p> 
    			<input id="username" name="username" placeholder="username" required tabindex="2" type="text" onkeyup="sendInfo()"> 
    			<br><span id="usernameconfirmation"></span>
                <p class="contact"><label for="password">Create a password</label></p> 
    			<input type="password" id="n5" name="password" required onblur="validatePassword()"> 
                <label id="password"><br>Atleast 8 characters needed. Your password should be alphanumeric.</br></label>
                <p class="contact"><label for="repassword"><br>Confirm your password</label></p> 
    			<input type="password" id="n6" name="repassword" required onblur="validateConfirmPassword()"> 
                <label id="confirmpassword"></label>
             <!--   <fieldset>
                 <label>Birthday</label>
                  <label class="month"> 
                  <select class="select-style" name="BirthMonth">
                  <option value="">Month</option>
                  <option  value="01">January</option>
                  <option value="02">February</option>
                  <option value="03" >March</option>
                  <option value="04">April</option>
                  <option value="05">May</option>
                  <option value="06">June</option>
                  <option value="07">July</option>
                  <option value="08">August</option>
                  <option value="09">September</option>
                  <option value="10">October</option>
                  <option value="11">November</option>
                  <option value="12" >December</option>
                  </label>
                 </select>    
                <label>Day<input class="birthday" maxlength="2" name="BirthDay"  placeholder="Day" required></label>
                <label>Year <input class="birthyear" maxlength="4" name="BirthYear" placeholder="Year" required></label>
              </fieldset> -->
              <br>
              <label>Birthdate </label>
              <input type="date" name="birthday">
  
            <select class="select-style gender" name="gender">
            <option value="select">i am..</option>
            <option value="m">Male</option>
            <option value="f">Female</option>
            <option value="others">Other</option>
            </select><br><br>
            
            <p class="contact"><label for="phone">Mobile phone</label></p> 
            <input id="phone" name="phone" placeholder="phone number" required type="text"> <br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Sign me up!" type="submit"> 	 
   </form> 
</div>      
</div>

</body>
</html>