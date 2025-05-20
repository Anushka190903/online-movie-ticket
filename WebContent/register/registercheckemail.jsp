<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../connection/connection.jsp"%>

<%
	String s=request.getParameter("val");  
	if(s==null || s.trim().equals(""))
	{  
		out.print("Please enter your email id");  
	}
	else
	{ 
		try
		{  
			
			String query="select * from cinetable where email=?";
			ps=con.prepareStatement(query);  
			ps.setString(1,s);  
		 	rs=ps.executeQuery();  
			if(rs.next())
			{  
				//out.print(s);
				out.print("\n this email is already taken");  
			}  
			con.close();  
		}
			catch(Exception e)
			{
			e.printStackTrace();
			}  

	}

%>