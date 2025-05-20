<%@ include file="../connection/connection.jsp" %>

<%
String time1=request.getParameter("time1");
String time2=request.getParameter("time2");
String time3=request.getParameter("time3");
String showtimeid=(String)session.getAttribute("showtimeid");
String query="UPDATE CINETIME SET TIME1=?,TIME2=?,TIME3=? WHERE showtimeid ='"+ showtimeid +"'";
	
ps=con.prepareStatement(query);

//ps.setString(1,moviename);
//ps.setString(2,hallname);
ps.setString(1,time1);
ps.setString(2,time2);
ps.setString(3,time3);
//ps.setString(6,showtimeid);
int result=ps.executeUpdate();
if(result!=0)
response.sendRedirect("viewshowtime.jsp");
else
response.sendRedirect("admin1.jsp");
con.close();
%>
