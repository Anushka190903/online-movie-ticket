<%@ include file="../connection/connection.jsp" %>

<%
String movieimage=request.getParameter("movieimage");
String movieimage1=request.getParameter("movieimage1");
String releasedate=request.getParameter("releasedate");
String movieid=(String)session.getAttribute("movieid");
String query="UPDATE CINEMOVIE SET movieimage=?,movierelease=? WHERE movieid ='"+ movieid +"'";
	
ps=con.prepareStatement(query);

//ps.setString(1,moviename);
//ps.setString(2,hallname);
if(movieimage.equals("")==false)
ps.setString(1,movieimage);
else
	ps.setString(1,movieimage1);
ps.setString(2,releasedate);
//ps.setString(6,showtimeid);
int result=ps.executeUpdate();
if(result!=0)
response.sendRedirect("viewmovie.jsp");
else
response.sendRedirect("admin1.jsp");
con.close();
%>
