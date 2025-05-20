<%@ include file="../connection/connection.jsp" %>

<%
String theatrename=(String)session.getAttribute("theatrename");
String moviename=(String)session.getAttribute("moviename");
String hallid=(String)session.getAttribute("hallid");
String showtime=request.getParameter("showtimename");
session.setAttribute("showtime",showtime);
String showdate=request.getParameter("showtimedate");
session.setAttribute("showtimedate",showdate);
String query="select * from cinebook where hallid='"+ hallid +"'";
rs=stmt.executeQuery(query);
while(rs.next()==true)
{
	int totalseats=Integer.parseInt(rs.getString("totalseats"));
	int sections=Integer.parseInt(rs.getString("sections"));
	int capacity1=Integer.parseInt(rs.getString("sec1capacity"));
	int capacity2=Integer.parseInt(rs.getString("sec2capacity"));
	int capacity3=Integer.parseInt(rs.getString("sec3capacity"));
%>	
<%
String querybook="Select * from cineseat where hallid='"+ hallid +"' AND bookdate='"+ showdate +"' AND booktime='"+ showtime +"'";
ResultSet rs1=null;
String booked="null";
Statement stmt1=null;
stmt1=con.createStatement();
rs1=stmt1.executeQuery(querybook);
while(rs1.next()==true)
	booked=rs1.getString("seatno");

String bookedseat[]=booked.split(",");
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Book Tickets</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<style>
		button{
		border:solid black 1px;
		}
		</style>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<script type="text/javascript">
		function myFunction() {
		
			var r=confirm("Third Party Payment Portal \n Click Ok to complete");
		    if (r)
		    {
			var seats=0
		    var x = document.getElementsByName("checkboxes");
		    var i;
		    for (i = 0; i < x.length; i++) {
		        if (x[i].checked == true) {
		         var seats=seats+","+x[i].value   
		        }
		    }
		    var selected=seats.slice(2);
		    document.getElementById("selected").value=selected;
			change=0;
		    }
		}
		function changeCheckBox()
		{
			var change=0
			var x = document.getElementsByName("checkboxes");
		    var i;
		    for (i = 0; i < x.length; i++) {
		        if (x[i].checked == true) {
		          change=1;  
		        }
		    }
		    if(change==1)
			 document.getElementById("bookbutton").removeAttribute("disabled");
		    else
		     document.getElementById("bookbutton").setAttribute("disabled", "disabled");

		}
		</script>
	</head>
	<body onLoad="myFunction2()" style="background-image:url(../images/book1.jpg)">
	<a href="../index2.jsp"><input type="button" value="return" ></a>
   <form  action="booking3.jsp" method="post" onSubmit="myFunction()">
		<!-- Header -->
			<header id="header">
				<div class="logo" style="position:center;"><a href="#">Cinemaniac <span>Choose the best. Experience the best</span></a></div>
			</header>

		<!-- Main -->
			<section id="main" style="position:absolute;">
				<div class="inner">

				<!-- One -->
					<section id="one" class="wrapper style1">
						<div class="image fit flush">
							<img src="../images/screen.jpg" height="50px" alt="" />
						</div>
						
						<header class="special">
							<h2>All Eyes this way</h2>
							<p style="color:blue"><%= theatrename %></p>
							<p style="color:blue"><%= showtime+"  "+showdate %></p>
						</header>
					
						<%
						int i=capacity1;
						int flag=0;
						int s1=0,t1=0;
						%>
						<p style="position:absolute;left:10%;font-weight:bold;color:red">Silver (Rs. 100 each)</p>
						
						<div class="content" align="left">
												
							<%
							 while(i>0)
							 {
								 
								 if(s1==20)
								 {
							%><br>	
							<%	 s1=0;
								 t1=0;
								 }
							%>
						<%
						  if(t1==10)
						  {
							  
						%>
						 &nbsp &nbsp
						<%
						
						  }	
						for(int z=0;z< bookedseat.length;z++)
						{
							if(bookedseat[z].equals("s"+i))
							{
								flag=1;
						%>
						<input type="checkbox" name="checkboxes" value="s<%=i %>" style="width:30px;height:30px;align:left" onclick="changeCheckBox()" disabled>
						<%		
							}
						}
						if(flag==0)
						{
						%>
                         <input type="checkbox" name="checkboxes" value="s<%=i %>" style="width:30px;height:30px;align:left" onchange="changeCheckBox()">	
						<%
						}
							flag=0;
							i--;
							s1++;
							t1++;
							 }
							%>
							</div>
							<br>
							<%
							if(sections==2 || sections==3)
							{
							%>
							<%
						int j=capacity2;
						int flag1=0;	
						int s2=0,t2=0;
						%>
						<p style="position:absolute;left:10%;font-weight:bold;color:red">Gold (Rs. 120 each)</p>
						<div class="content" align="left">
							<%
							 while(j>0)
							 {
								 
								 if(s2==20)
								 {
							%><br>	
							<%	 s2=0;
								 t2=0;
								 }
							%>
						<%
						  if(t2==10)
						  {
							  
						%>
						 &nbsp &nbsp
						<%
						
						  }		
						for(int z=0;z< bookedseat.length;z++)
						{
							if(bookedseat[z].equals("g"+j))
							{
								flag1=1;
						%>
						<input type="checkbox" name="checkboxes" value="g<%=j %>" style="width:30px;height:30px;align:left" disabled>
						<%		
							}
						}
						if(flag1==0)
						{
						%>
								<input type="checkbox" id="checkboxes" name="checkboxes" value="g<%=j %>" style="width:30px;height:30px;" onchange="changeCheckBox()">
						<%
						}
							flag1=0;
							j--;
							s2++;
							t2++;
							 }
							}
							%>
							</div>
							<br>
							<%
							if(sections==3)
							{
							%>
						<%
						int k=capacity3;
						int flag2=0;
						int s3=0,t3=0;
						%>
						<p style="position:absolute;left:10%;font-weight:bold;color:red">Diamond (Rs. 150 each)</p>
						<div class="content" align="left">
							<%
							 while(k>0)
							 {
								 
								 if(s3==20)
								 {
							%><br>	
							<%	 s3=0;
								 t3=0;
								 }
							%>
						<%
						  if(t3==10)
						  {
							  
						%>
						 &nbsp &nbsp
						<%
						
						  }	
						for(int z=0;z< bookedseat.length;z++)
						{
							if(bookedseat[z].equals("d"+k))
							{
								flag2=1;
						%>
						<input type="checkbox" name="checkboxes" value="d<%=k %>" style="width:30px;height:30px;align:left" disabled>
						<%		
							}
						}
						if(flag2==0)
						{
						%>
								<input type="checkbox" id="checkboxes" name="checkboxes" value="d<%=k %>" style="width:30px;height:30px;" onchange="changeCheckBox()">
						<%
						}
						    flag2=0;
							k--;
							s3++;
							t3++;
							 }
							}
							%>
							<%
}
%>
							</div>
							<p style="color:blue">*please note there is a 10/- internet billing charge for each ticket</p>
							</section>
							
							</div>
							<input type="hidden" id="selected" name="selected" value="" >
							<input type="submit" id="bookbutton" style="position: absolute;left:550px;"value="Book" disabled>
							
											
										</section>
                            
				
</form>
	</body>
</html>