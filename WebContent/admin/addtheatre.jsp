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
<title>
Adding Theatre Details
</title>
</head>
<body>
<p align="left"><a href="admin1.jsp"><button>Return</button></a></p>
<h1 align="center"> &nbsp &nbspPlease Add Deatils</h1>
<div  align="center">
    		<form id="addtheatre" action="addtheatreaction.jsp">
    		<br> <br><br> 
    		 <label>Hall Name :</label>
    			<input id="hallname" name="hallname" placeholder="enter hall name" required tabindex="2" type="text"> 
    			<br><label>please include the locality along with the hall name for users' benefit.
    				   Example: Asoka Cinema:<strong>Behala</strong>.
    				   Here "Behala" is the locality of the hall</label>
    			<br> <br>
    			<label>Hall Location :</label>
    			<select name="halllocation">
                  <option value="">Select Location</option>
                  <option  value="kolkata">Kolkata</option>
                  <option value="north24parganas">North 24 Parganas</option>
                  <option value="howrah" >Howrah</option>
                  <option value="south24parganas">South 24 Parganas</option>
                  <option value="eastmedinipur">East Medinipur</option>
                  <option value="westmedinipur">West Medinipur</option>
                  <option value="jalpaiguri">Jalpaiguri</option>
                  <option value="jhargram">Jhargram</option>
                  <option value="alipurduar">Alipurduar</option>
                  <option value="bankura">Bankura</option>
                  <option value="n&sdinajpur">North & South Dinajpur</option>
                  <option value="darjeeling" >Darjeeling</option>
                   <option value="nadia" >Nadia</option>
                    <option value="coochbehar" >Cooch Behar</option>
                     <option value="murshidabad" >Murshidabad</option>
                    <option value="purulia" >Purulia</option>
                     <option value="birbhum" >Birbhum</option>
                     
                 </select>
    	
    			
    			<label>&nbsp &nbsp Hall Address :</label>
    			<input type="text" id="halladdress" name="halladdress"  placeholder="enter the address" required> 
                <br><br>
                <label>&nbsp &nbsp Hall Contact :</label>
                <input type="text" id="hallcontact" name="hallcontact"  placeholder="enter contact number" required> 
                
            <br></br> 
            <input class="buttom" name="submitaddtheatre" id="submitaddtheatre" tabindex="5" value="Submit" type="submit"> 	 
   </form> 
</div>      

</body>
</html>