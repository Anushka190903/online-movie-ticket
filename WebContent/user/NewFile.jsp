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
		<script type="text/javascript">
		function deleteBox()
		{
			document.getelementById("checkbox1").style.disabled;
			
		}
		
		</script>
		
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
	</head>
	<body style="background-image:url(../images/book1.jpg)">
<form>
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
							<p style="color:blue">Try</p>
						</header>
						<%
						int i=44;
						int s1=0,t1=0;
						%>
						<p style="position:absolute;left:10%;font-weight:bold;color:red">Silver</p>
						<div class="content" align="center">
							<%
							 while(i>0)
							 {
								 
								
							%>	
						<%
							if(s1==22)
							{
						%>
							<br>
							<%
							s1=0;
							t1=0;} %>
						<%
						if(t1==4 || t1==17)
						{
						%>
						<input type="checkbox" id="checkbox1" style="-webkit-appearance:none;width:30px;height:30px;align:left" onselect="deleteBox()">
						<%
						}
						else
						{
							if(i==15 || i==16 || i==17)
							{
						%>
					
						<input type="checkbox" id="checkbox1" style="width:30px;height:30px;align:left" disabled><%=i %>
						<%
							}
							else
							{
						%>
							<input type="checkbox" id="checkbox1" style="width:30px;height:30px;align:left">
											
						<%
							}
							} %>	
							
						<%
							i--;
							s1++;
							t1++;
							 }
							%>
							</div>
							<br>
						<%
						int i1=44;
						int s11=0,t11=0;
						%>
						<p style="position:absolute;left:10%;font-weight:bold;color:red">MVC</p>
						<div class="content" align="center">
							<%
							 while(i1>0)
							 {
								 
								
							%>	
						<%
							if(s11==22)
							{
						%>
							<br>
							<%
							s11=0;
							t11=0;} %>
						<%
						if(t11==4 || t11==17)
						{
						%>
						<input type="checkbox" id="checkbox1" style="-webkit-appearance:none;width:30px;height:30px;align:left" onselect="deleteBox()">
						<%
						}
						else
						{
						%>
						<input type="checkbox" id="checkbox1" style="width:30px;height:30px;align:left" onselect="deleteBox()">
						<% } %>	
							
						<%
							i1--;
							s11++;
							t11++;
							 }
							%>
							</div>
							<br>	
						<%
						int j=22;
						int s2=0,t2=0;
						%>
						<p style="position:absolute;left:10%;font-weight:bold;color:red">Gold</p>
						<div class="content" align="center">
							<%
							 while(j>0)
							 {
								 
								
							%>	
						<%
							if(s2==22)
							{
						%>
							<br>
							<%
							s2=0;
							t2=0;} %>
						<%
						if(t2==4 || t2==17)
						{
						%>
						<input type="checkbox" id="checkbox1" style="-webkit-appearance:none;width:30px;height:30px;align:left" onselect="deleteBox()">
						<%
						}
						else
						{
						%>
						<input type="checkbox" id="checkbox1" style="width:30px;height:30px;align:left" onselect="deleteBox()">
						<% } %>	
							
						<%
							j--;
							s2++;
							t2++;
							 }
							%>
							</div>
							<br>
							<%
						int k=1;
						int s3=0,t3=0;
						%>
						<p style="position:absolute;left:10%;font-weight:bold;color:red">Gold</p>
						<div class="content" align="center">
							<%
							 while(k<=154)
							 {
								 
								
							%>	
						<%
							if(s3==22)
							{
						%>
							<br>
							<%
							s3=0;
							t3=0;} %>
						<%
						if((t3==4 && k!=93 && k!=115 && k!=137) ||(t3==17 && k!=106 && k!=128 && k!=150) || k==72 || k==73 || k==74 || k==75 || k==76 || k==77 || k==78 || k==79 || k==80 || k==81 || k==82 || k==83 || 
						k==98 || k==99 || k==100 || k==101 || k==102 || k==103 || k==120 || k==121 || k==122 || k==123 || k==124 || k==125 || k==143 || k==144 || k==145 || k==146) 
						{
							
						%>
						<input type="checkbox" id="checkbox1" style="-webkit-appearance:none;width:30px;height:30px;align:left" onselect="deleteBox()">
						<%
							
						}
						else
						{
						%>
						<input type="checkbox" id="checkbox1" style="width:30px;height:30px;align:left" onselect="deleteBox()">
						<% }	
						
						
							k++;
							s3++;
							t3++;
							 }
							%>
							</div>
									<br>
						
					
							</section>
							</div>
							
											
										</section>

				
		
</form>
	</body>
</html>