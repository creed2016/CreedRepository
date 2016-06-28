<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html></head>
<title>CREED</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style>

.c {
   float: left;
   margin: 10px;
   padding: 10px;
   width: 110px;
   height: 60px;
   border: 5px solid green;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:380px;
    width:120px;
    float:left;
    padding:5px;
}
#section {
    width:350px;
    float:left;
    padding:10px;
}
#footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
    padding:5px;
}
</style>
<body>
<div class="w3-row w3-border">
<div class="w3-quarter w3-container">
  <div id="nav">
Hello!<br><br>

<% String name = request.getParameter("username");%>
<%out.println("User name is " +name);%><br>




Update
</div>

  
</div>
<div class="w3-threequarter w3-container">
  <div class="w3-container">
  
<div>
<img src="images\creed.png" alt="img" style="float:center;" width="110%" align="right" >
</div>

</div>
<br>


<ul class="w3-navbar w3-black">
<div class="w3-third w3-container">
  <li><a href="#" onclick="openCity('Service')">Service</a></li>
</div>
<div class="w3-third w3-container">
  <li><a href="#" onclick="openCity('Paris')">Document</a></li>
</div>
<div class="w3-third w3-container">
  <li><a href="#" onclick="openCity('Tokyo')">Ticket</a></li>
</div>
</ul>

<div id="Service" class="w3-container city">
  <h2>Service</h2>
  <p>CREED GLOBAL TECHNOLOGY</p>
  <ul>
  
  	<li><a href="http://www.creedglobal.com/service_analytics.html">Analytics</a></li>
  	<li><a href="http://www.creedglobal.com/service_application.html">Application Services</a></li>
	<li><a href="http://www.creedglobal.com/service_professional.html">Professional Services</a></li>
	<li><a href="http://www.creedglobal.com/service_mobility.html">Mobility</a></li>
	<li><a href="http://www.creedglobal.com/service_web.html">Web services</a></li>
	<li><a href="http://www.creedglobal.com/service_hosting.html">Hosting</a></li>
  
  </ul>
  
</div>

<div id="Paris" class="w3-container city">
  <h2>Document</h2>
  <p>Creed Global</p>
  Click on the link to download:
	<a href="DownloadServlet">Download a File</a><br><br>
	Click on the link to download:
	<a href="Download2">Download a 2nd File</a>
</div>

<div id="Tokyo" class="w3-container city">
  <h2>Ticket</h2>

  
<div action="form.asp" class="w3-card-4">

<div class="w3-container w3-blue">
  <h2>Client Description</h2>
</div>

<div>

<form class="w3-container" action="UserDetails.jsp">

<p>
<label class="w3-label w3-text-black"><b>Name</b></label>
<input class="w3-input w3-border w3-white" name="name" type="text"></p>

<p>
<label class="w3-label w3-text-black"><b>Client id</b></label>
<input class="w3-input w3-border w3-white" name="id" type="text"></p>

<p>
<select class="w3-select w3-border" name="priority">
<label class="w3-label w3-text-black w3-white"></label>
  <option value="" disabled selected>Choose your priority</option>
  <option value="Low">low</option>
  <option value="Medium">Medium</option>
  <option value="High">High</option>
</select>
</p>

<p>
<label class="w3-label w3-text-black"><b>Description</b></label>
<textarea class="w3-input w3-border w3-white" name="description" rows="10" cols="30">
</textarea>
</p>


<p><button class="w3-btn w3-blue">Register</button></p>


			
			
			

</form>
</div>
  
  
</div>

<script>
openCity("Service")
function openCity(cityName) {
    var i;
    var x = document.getElementsByClassName("city");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    document.getElementById(cityName).style.display = "block";
}
</script>
</div>
</div>

</body>
</html>