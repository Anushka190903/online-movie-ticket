<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
		/*if(symbols.indexOf(password.charAt(i))!=-1)
			checkSpecialCharacter++;*/
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
		if(password!=null && password!="")
			{
		document.getElementById("password").innerHTML="Password error";
		document.getElementById("password").style.color="red";
			}
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
		if(pass!="" && pass!=null)
			{
			document.getElementById("confirmpassword").innerHTML="Password Not Matched";
			document.getElementById("confirmpassword").style.color="red";
			}
			//document.getElementById("password").innerHTML="Password Not Matched";
			//document.getElementById("password").style.color="red";	
			
		}
} 
</script>

</head>
<body>
<a href="admin1.jsp"><button align="left">Return</button></a>
<h3 align="center"> Change Your Password</h3>
<form action="../contact/passchangeDB.jsp" method="post">
<div align="center">
<label>Enter New Password :</label>
<input type="password" reequired name="newpass" id="newpass" onBlur="validatePassword()"><br>
<label id="password">your password should be alphanumeric</label>
<br><br>
<label>Re-Type your password :</label>
<input type="password" name="renewpass" id="retypepass" required onBlur="validateConfirmPassword()">
<br><label id="confirmpassword"></label>
<br><br>
<input type="submit" name="submitpasschange" value="submit">

</div>
</form>

</body>
</html>