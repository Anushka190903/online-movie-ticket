<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connection/connection.jsp" %>

<%
	String query="select * from cinemovie";
	rs=stmt.executeQuery(query);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>CINEMANIAC</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
<!--[if IE 6]><link rel="stylesheet" href="css/ie.css" type="text/css" media="all" /><![endif]-->
<style>
.fill {object-fit: contain;}
</style>
<script type="text/javascript">
function ctime()
{
	var date=new Date();
    d=date.getDate();
    if(d<10)
    	d="0"+d;
    mn=date.getMonth();
    if(mn<10)
    	mn="0"+mn;
	h=date.getHours()
	m=date.getMinutes()
	s=date.getSeconds()
	if(m<10 && s<10)
		ct=d+"/"+mn+"/"+date.getFullYear()+"   "+"0"+h+":"+"0"+m+":"+"0"+s
	else if(s<10)
		ct=d+"/"+mn+"/"+date.getFullYear()+"   "+h+":"+"0"+m+":"+"0"+s
	else if(m<10)
		ct=d+"/"+mn+"/"+date.getFullYear()+"   "+h+":"+"0"+m+":"+s
	else
		ct=d+"/"+mn+"/"+date.getFullYear()+"   "+h+":"+m+":"+s
	 document.getElementById("tdemo").innerHTML=ct
	 
	 setTimeout("ctime()",1000);
}
</script>

</head>
<body onLoad="ctime()">
<!-- START PAGE SOURCE -->
<div id="header">
  <div class="shell">
    <h1 id="logo"><a href="#">CINEMANIAC <span>Choose the best.Experience the best.</span></a></h1>
    <div id="navigation">
      <ul>
        <li><a class="active" href="#"><span><center>HOME</center><em></em></span></a></li>
        <li><a href="register/login2.jsp"><center>MOVIES</center><em>all running movies</em></a></li>
        <li><a href="register/login2.jsp"><center>THEATRES</center><em>best cinema halls</em></a></li>
        <li><a href="register/register2.jsp"><center>REGISTER</center><em>be a member</em></a></li>
        <li><a href="register/login2.jsp"><center>LOG IN</center><em>for existing users</em></a></li>
        <li class="last"><a href="contact/contact.jsp"><center>CONTACT</center><em>get in touch</em></a></li>
        
        <li class="last"><a href="#" style="color:#000000;">
        	&nbsp&nbsp &nbsp &nbsp Hi GUEST
        </a></li>
      </ul>
      
    </div>
    <div class="cl">&nbsp;</div>
  </div>
</div>
<div id="intro">
  <div class="shell">
    <div class="info">
      <div class="head"> <img src="css/images/aboutus.jpg" alt="" />
        <h2>About Us</h2>
      </div>
      <div class="content">
        <p>Welcome to our website. We are a start up, trying to make the CINEMA experience of the all cine loving people more easy, more fantastic. Buy your movie tickets at the cheapest from us and have other refreshment packages from our associate partners. CINEMANIAC offers you the fabulous experience of all kind of cinemas near you. Be with us.
        Keep in touch with us. We are always ready to listen from you. Contact us for any enquiries. Choose the best. Experience the best.</p>
      </div>
      <a class="big-button" href="#"><span><p id="tdemo"></p></span></a> </div>
   
   
    <div id="slider">
      <div class="slider-carousel">

        <ul>
                  <%
while(rs.next()==true) 
{
String image=rs.getString("movieimage");

String str[]=image.split("user");
String str1="";
for(int i=0;i<str.length;i++)
{
	
	if(i==1)
	str1=str[i];
	
}

	
%>
          <li><a href="register/login2.jsp"><img style="width:450px;height:350px;display:block;margin-left:auto;margin-right:auto;" src="user/<%=str1 %>"  alt="" /></a></li>
        <%
}
        %>      
         <!-- <li><a href="#"><img src="css/images/2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/3.jpg" alt="" /></a></li>
        -->
        </ul>
 
        <div class="slider-navigation">
          <ul>
            <li><a class="active" href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="cl">&nbsp;</div>
  </div>
</div>
<div id="slider-navigation-field"> &nbsp; </div>
<div id="content">
  <div class="shell">
    <div class="box">
      <h3>Ratings</h3>
      <div class="box-content"> <a href="#"><img src="css/images/reviewmovies.jpg" alt="" /></a>
    
        <p>Want to get all the latest updates,reviews and ratings of the movies you like?
       Want to know which famous movie review sites have given what rate to your favourite movie?Want to know the box office details? It's our pleasure to provide you the information.</p>
      </div>
      <a class="button-small" href="#"><span><em>Read More</em></span></a> </div>
    <div class="box">
      <h3>Latest News</h3>
      <div class="box-content">
        <ul class="news">
          <li><a href="http://beverlypress.com/2017/11/thor-ragnarok-tops-all-other-god-of-thunder-adventures/" target="_blank"><img src="css/images/thorsmall.jpg" alt="" /></a> <span class="date">November 9th, 2017</span><span><br/>
            "Thor: Ragnarok" does little to modify that trajectory, but in place of a film in genre crisis, the "threequel" goes out in a blaze of glory.<a href="http://beverlypress.com/2017/11/thor-ragnarok-tops-all-other-god-of-thunder-adventures/" target="_blank">...</a></span></li>
          <li class="last-item"><a href="http://www.firstpost.com/entertainment/yeti-obhijaan-movie-review-srijit-mukherjis-film-does-not-live-up-to-its-cinematic-poential-4121169.html" target="_blank"><img src="css/images/kakababusmall.jpg" alt="" /></a> <span class="date">October 8th, 2017</span><span><br/>
          National Film Award winning director Srijit Mukherji's latest offering Yeti Obhijaan (The Yeti Adventure) is the second film in a planned trilogy<a href="http://www.firstpost.com/entertainment/yeti-obhijaan-movie-review-srijit-mukherjis-film-does-not-live-up-to-its-cinematic-poential-4121169.html" target="_blank">...</a></span></li>
        </ul>
      </div>
      <a class="button-small" href="#"><span><em>Read More</em></span></a> </div>
    <div class="box last">
      <h3>Our Partners</h3>
      <div class="box-content">
        <ul>
          <li><a href="http://online.kfc.co.in" target="_blank">KFC finger lickin' good</a></li>
          <li><a href="http://www.mcdonaldsindia.com" target="_blank">McDonald's I'm Lovin' It </a></li>
          <li><a href="http://paytm.com" target="_blank">PayTm Karo</a></li>
          <li><a href="http://visa.co.in">Visa: Everywhere you want to be </a></li>
          <li><a href="http://www.radiomirchi.com">RadioMirchi It's Hot</a></li>
          <li><a href="http://www.redfmindia.in" target="_blank">RED FM Bajaate Raho!</a></li>
          <li><a href="http://www.hotstar.com" target="_blank">Hotstar-go solo</a></li>
          <li><a href="http://www.hoichoi.tv"target="_blank">Hoichoi,Hoye Jaak</a></li>
        </ul>
      </div>
      <a class="button-small" href="#"><span><em>Read More</em></span></a> </div>
    <div class="cl">&nbsp;</div>
  </div>
</div>
<div class="footer">
  <div class="shell">
    <p class="lf">Copyright &copy; 2017 <a href="#">cinemaniac.net</a> - All Rights Reserved</p>
    <p class="rf"><a></a> <a href=""></a></p>
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->
</div></body>
</html>