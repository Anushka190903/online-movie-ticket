<%
	String username=(String)session.getAttribute("username");
	if(username==null)
	{
		response.sendRedirect("../index.jsp");
	}
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="../connection/connection.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
ResultSet rs1;
Statement stmt1;
stmt1=con.createStatement();
String query1="select * from CINEMOVIE";
String query2="select * from CINEHALL";
rs=stmt.executeQuery(query1);
rs1=stmt1.executeQuery(query2);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p align="left"><a href="admin1.jsp"><button>Return</button></a></p>
<h1 align="center"> &nbsp &nbsp Please Add Deatils</h1>
<div  align="center">
    		<form id="addshowtime" action="addshowtimeaction.jsp">
    	<br> <br>
    			<label>Select Movie :</label>
    			<select name="moviename">
    			<option value="">Select Movie</option>
    			<% while(rs.next()==true)
    			{
    			 
    			%>
                  <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                  <%
    			}
                  %>         
                  </select>
    			<br> <br>
    			<label>Select Theatre Name :</label>
    			<select name="hallname">
    			<option value="">Select Theatre</option>
    			<% while(rs1.next()==true)
    			{
    			%>
    			
                  <option value="<%=rs1.getString(1)%>"><%=rs1.getString(1)%></option>
                  <%
    			}
    			con.close();
                  %>         
                  </select>
                  <br><br>
    			
    			<label>&nbsp &nbsp Show Time 1 :</label>
    			<input type="time" id="time1" name="time1" required> 
                <br><br>
                <label>&nbsp &nbsp Show Time 2 :</label>
    			<input type="time" id="time2" name="time2"> 
                <br><br>
                <label>&nbsp &nbsp Show Time 3 :</label>
    			<input type="time" id="time3" name="time3"> 
                <br><br>
            
            <input name="submitaddshowtime" id="submitaddshowtime" tabindex="5" value="Submit" type="submit"> 	 
   </form> 
</div>      

</body>
</html>