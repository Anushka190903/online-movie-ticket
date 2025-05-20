<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
 <%@ include file="../connection/connection.jsp" %>
 <%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
    <%
 String newpass=request.getParameter("newpass");
 String username=(String)session.getAttribute("username");
 String regex = "(.)*(\\d)(.)*";       
 Pattern pattern = Pattern.compile(regex);
 Matcher matcher = pattern.matcher(newpass);
 boolean atleastOneAlpha = newpass.matches(".*[a-zA-Z]+.*");
 boolean isMatched = matcher.matches();
	if(newpass.length()>7==false)
		request.getRequestDispatcher("passchange.jsp").forward(request, response);
	else  if (isMatched==false || atleastOneAlpha==false) 
	{
		request.getRequestDispatcher("passchange.jsp").forward(request, response);
	}
	else
	{

 
 String query="UPDATE CINETABLE SET PASSWORD=? WHERE USERNAME ='"+ username +"'";
 
//try {
			ps=con.prepareStatement(query);
			ps.setString(1,newpass);
			
			int result=ps.executeUpdate();
			if(result!=0)
			{
				if(username.equals("admin"))
					 response.sendRedirect("../admin/admin1.jsp");
				else
					response.sendRedirect("../index2.jsp");
			}
			
			else
			{
				if(username.equals("admin"))
					response.sendRedirect("..admin/changeadminpass.jsp");
				else
					response.sendRedirect("passchange.jsp");
			}
			
}
con.close();
		//} catch (SQLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		//}
		
		%>
 