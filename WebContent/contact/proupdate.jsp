<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@include file="../connection/connection.jsp" %>
 <%
 String username=(String)session.getAttribute("username");
 String name=request.getParameter("name3");
 //String email=request.getParameter("email3");
 //String username=request.getParameter("username");
 String birthdate=request.getParameter("birthdate3");
 String gender=request.getParameter("gender3");
 String phone=request.getParameter("phone3");
 
 
 String query="UPDATE CINETABLE SET NAME=?,BIRTHDATE=?,GENDER=?,PHONENUMBER=? WHERE USERNAME ='"+ username +"'";
 
// try {
			ps=con.prepareStatement(query);
			ps.setString(1,name);
			//ps.setString(2,email);
			ps.setString(2,birthdate);
			ps.setString(3,gender);
			ps.setString(4,phone);
			
			int result=ps.executeUpdate();
			if(result!=0)
			{
				// session.setAttribute("email",email);
				 session.setAttribute("name",name);
				 session.setAttribute("birthdate",birthdate);
				 session.setAttribute("gender",gender);
				 session.setAttribute("phonenumber",phone);
				response.sendRedirect("../index2.jsp");
			}
			
			else
			{
				response.sendRedirect("profile.jsp");
			}
			
			con.close();
		//} catch (SQLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		//}
		
		%>