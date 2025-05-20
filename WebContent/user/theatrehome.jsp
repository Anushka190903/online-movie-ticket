<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%
	String nothing="nothing";
	String moviename="";
	String uname=(String)session.getAttribute("username");
	if(uname==null)
	{
		response.sendRedirect("../register/login2.jsp");
	}
	
	  
		moviename=request.getParameter("moviename");
	   
	  try
	  {
		if(moviename.equals(null)==false)
		{
			
		}	
		session.setAttribute("moviename",moviename);
		
	  }
	  catch(Exception e)
	  {
		  session.setAttribute("moviename",nothing);   
	  }
	  
	  
	
	

%>

<!DOCTYPE HTML>
<html>
<head>	
<title>Theatres</title>
<link href="css/style3.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" /> -->
<!--[if IE 6]><link rel="stylesheet" href="css/ie.css" type="text/css" media="all" /><![endif]-->

</head>
<body>
<!-- START PAGE SOURCE -->
<div id="header" style="background-image:url(images/hulk%20-%20Copy.jpg)">
  <div class="shell">
    <h1 id="logo"><a href="#" style="color:#F00">CINEMANIAC <span>Choose the best.Experience the best.</span></a></h1>
    <div id="navigation">
      <ul>
        <li><a class="active" href="../index2.jsp" style="color:#F00"><span><center>HOME</center><em></em></span></a></li>
        <li><a href="moviehome.jsp" style="color:#F00"><center>MOVIES</center><em>all running movies</em></a></li>
        <li><a href="theatrehome.jsp" style="color:#F00"><center>THEATRES</center><em>best cinema halls</em></a></li>
        <li><a href="../contact/profile.jsp" style="color:#F00"><center>PROFILE</center><em>be a member</em></a></li>
        <li><a href="../register/logout.jsp" style="color:#F00"><center>LOG OUT</center><em>for existing users</em></a></li>
        <li class="last"><a href="../contact/contact2.jsp" style="color:#F00"><center>CONTACT</center><em>get in touch</em></a></li>
        
        <li class="last"><a href="#" style="color:#000000;">
        	&nbsp&nbsp &nbsp &nbsp Hi <%=uname %>
        </a></li>
      </ul>
      
    </div>
    <div class="cl" align="center">&nbsp;</div>
  </div>
</div>



    <div class="wrap" align="left">
        <div class="sidebar" align="left">
                
            
        </div>
            <div class="content" style="width:100%;background-image:url(images/hulk%20-%20Copy.jpg">
                <div class="clear"></div>
                <div align="left">
                <div align="left">
                    
                  <!-- Write in this division -->
                  
                  
                </div>
            <div class="clear"></div>
            </div>
                <div class="clear"></div>
                <h4><label>West Bengal</label></h4><a href="#"><label>Change</label></a><h2 align="center">Click Your Location</h2>
               
               
                <ul class="paginate">
                   <a><li><form action="test.jsp"><input style="font-weight:bold;color:red" type="submit" value="Kolkata"><input type="hidden" name="location" value="kolkata"></form></li></a>
                    <a><li><form action="test.jsp"><input style="font-weight:bold;color:red" type="submit" value="North 24 Parganas"><input type="hidden" name="location" value="north24parganas"></form></li> </a>
                    <a><li><form action="test.jsp"><input style="font-weight:bold;color:red" type="submit" value="South 24 Parganas"><input type="hidden" name="location" value="south24parganas"></form></li> </a>
                    <a><li><form action="test.jsp"><input style="font-weight:bold;color:red" type="submit"  value="Howrah"><input type="hidden" name="location" value="howrah"></form></li></a>
                    <a><li><form action="test.jsp"><input style="font-weight:bold;color:red" type="submit"  value="East Medinipur"><input type="hidden" name="location" value="eastmedinipur"></form></li></a>
                    
                </ul>
                
                <ul class="paginate">
                
                <a><li><form action="test.jsp"><input style="color:red;font-weight:bold;" type="submit" value="Jalpaiguri"><input type="hidden" name="location" value="jalpaiguri"></form></li></a>
                    <a><li><form action="test.jsp"><input style="font-weight:bold;color:red" type="submit" value="Jhargram"><input type="hidden" name="location" value="jhargram"></form></li> </a>
                    <a><li><form action="test.jsp"><input style="color:red;font-weight:bold;" type="submit" value="Birbhum"><input type="hidden" name="location" value="birbhum"></form></li> </a>
                    <a><li><form action="test.jsp"><input style="color:red;font-weight:bold;" type="submit"  value="Bankura"><input type="hidden" name="location" value="bankura"></form></li></a>
                    <a><li><form action="test.jsp"><input style="color:red;font-weight:bold;" type="submit"  value="N&S Dinajpur"><input type="hidden" name="location" value="n&sdinajpur"></form></li></a>
                    <a><li><form action="test.jsp"><input style="color:red;font-weight:bold;" type="submit"  value="Darjeeling"><input type="hidden" name="location" value="darjeeling"></form></li></a>
                   
                    
                </ul>
                 <ul class="paginate">
                 <a><li><form action="test.jsp"><input style="color:red;font-weight:bold;" type="submit" value="Nadia"><input type="hidden" name="location" value="nadia"></form></li></a>
                    <a><li><form action="test.jsp"><input style="color:red;font-weight:bold;" type="submit" value="Cooch Behar"><input type="hidden" name="location" value="coochbehar"></form></li> </a>
                    <a><li><form action="test.jsp"><input style="color:red;font-weight:bold;" type="submit" value="Murshidabad"><input type="hidden" name="location" value="murshidabad"></form></li> </a>
                    <a><li><form action="test.jsp"><input style="color:red;font-weight:bold;" type="submit"  value="Purulia"><input type="hidden" name="location" value="purulia"></form></li></a>
                    <a><li><form action="test.jsp"><input style="color:red;font-weight:bold;" type="submit"  value="Bardhaman"><input type="hidden" name="location" value="bardhaman"></form></li></a>
                    <a><li><form action="test.jsp"><input style="font-weight:bold;color:red" type="submit"  value="West Medinipur"><input type="hidden" name="location" value="westmedinipur"></form></li></a>
                   
                   
                </ul>
                
                <div class="content" align="center" style="width:97%;background-image:url(images/hulk%20-%20Copy.jpg)">
                <div class="nav" align="center">
                <p style="color:black">Other Popular Cities</p>
                  <br>  <ul>
                        <li><a><form action="test.jsp"><input style="color:red" type="submit"  value="Mumbai"><input type="hidden" name="location" value="mumbai"></form></a></li>
                        <li><a><form action="test.jsp"><input style="color:red" type="submit"  value="Chennai"><input type="hidden" name="location" value="chennai"></form></a></li>
                        <li><a><form action="test.jsp"><input style="color:red" type="submit"  value="Bengaluru"><input type="hidden" name="location" value="bengaluru"></form></a></li>
                        <li><a><form action="test.jsp"><input style="color:red" type="submit"  value="Delhi"><input type="hidden" name="location" value="delhi"></form></a></li>
                        <li><a><form action="test.jsp"><input style="color:red" type="submit"  value="Pune"><input type="hidden" name="location" value="pune"></form></a></li>
                        <li><a><form action="test.jsp"><input style="color:red" type="submit"  value="Hyderabad"><input type="hidden" name="location" value="hyderabad"></form></a></li>
                        <li><a><form action="test.jsp"><input style="color:red" type="submit"  value="Guwahati"><input type="hidden" name="location" value="guwahati"></form></a></li>
                        <li><a><form action="test.jsp"><input style="color:red" type="submit"  value="Amritsar"><input type="hidden" name="location" value="amritsar"></form></a></li>
                        <li class="menu" id="active"><a>More</a>
                            <ul>
                                <li><a><form action="test.jsp"><input style="" type="submit"  value="Patna"><input type="hidden" name="location" value="patna"></form></a></li>
                                <li><a><form action="test.jsp"><input style="" type="submit"  value="Ahmedabad"><input type="hidden" name="location" value="ahmedabad"></form></a></li>
                          
                            </ul>
                        </li>
                   </ul>
               </div>
        
        </div>
            </div>
        </div>
    <div class="clear"></div>

	
  
</body>
</html>
