<%
	String username=(String)session.getAttribute("username");
	if(username==null)
	{
		response.sendRedirect("../index.jsp");
	}
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding Movie Details</title>
</head>
<body>
<p align="left"><a href="admin1.jsp"><button>Return</button></a></p>
<h1 align="center"> &nbsp &nbspPlease Add Deatils</h1>
<div  align="center">
    		<form id="addmovie" action="addmovieaction.jsp">
    		<br> <br><br> 
    		 <label>Movie Name :</label>
    			<input id="moviename" name="moviename" placeholder="enter movie name" required tabindex="2" type="text"> 
    			<br> <br>
    			<label>Movie Language :</label>
    			<select name="movielang">
                  <option value="">Select Language</option>
                  <option  value="bengali">Bengali</option>
                  <option value="hindi">Hindi</option>
                  <option value="english" >English</option>
                  <option value="other">Other</option>
           </select>
           <br>
           <p>If other is selected, please mention the name of the language along with the movie name.
           Ex- 'Hello Dubaikkaran:Malayalam'.Here 'Malayalam' is the language of the movie. </p>  
    	
    			
    			<label>&nbsp &nbsp Movie Image :</label>
    			<input type="file" id="movieimage" name="movieimage"> 
                <br><br>
                <label>&nbsp &nbsp Movie Release Date :</label>
                <input type="date" id="releasedate" name="releasedate" required> 
                
            <br></br> 
            <input name="submitadmovie" id="submitaddmovie" tabindex="5" value="Submit" type="submit"> 	 
   </form> 
</div>      

</body>
</html>