<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<% 	pageContext.setAttribute("eList", (List)session.getAttribute("resultSet"));%>

</head>
<body background="https://images.trvl-media.com/media/content/expus/graphics/launch/home/tvly/150324_flights-hero-image_1330x742.jpg">
   <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">AirPath.com</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active">
      <a href="home.jsp">Home</a></li>
      <li><a href="index.jsp">Login</a></li>
  
      <li><a href="About.jsp">About us</a></li>
        <li><a href="Payment.jsp">Payment</a></li>
         <li><a href="Logout.jsp">Logout</a></li>
      
      
    </ul>

  </div>
</nav>
 <table>
   <font color="white">
      <TH></th>                    
      <TH></th>
      <c:forEach var="mylist" items="${eList}">
        <tr>
          Flight Id:<td><tr>${mylist.f_id}</tr></td><br>
          Flight Arrival Date:<td><tr>${mylist.arr_date}</tr></td><br>
           Flight Departure time:<td><tr>${mylist.dep_time}</tr></td><br>
            Flight Departure Date:<td><tr>${mylist.dep_date}</tr></td><br>
             Flight Class:<td><tr>${mylist.class_type}</tr></td><br>
              Flight Location:<td><tr>${mylist.from_loc}</tr></td><br>
               Flight Destination:<td><tr>${mylist.to_loc}</tr></td><br>
                Flight Arrival time:<td><tr>${mylist.arr_time}</tr></td><br>
                Flight amount:<td><tr>${mylist.f_amt}</tr></td>
              <br>
        </tr>
        
        <button type="button" onclick="window.location.href='Payment.jsp'">Book</button>
        <br><br>
<!--         <a href="Payment.jsp">Proceed to pay</a><br><br> -->
      </c:forEach>
      </font>
    </table>
    <br><br><br><br><br><br><br><br>
  <font color="white">
<link href="https://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<!--footer start from here-->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-6 footerleft ">
 
        <p>AirPath collects information from a large number of sources (airlines, airports and others) and presents an intuitive display of the data we compile. Registered users can explore details collected from the data sources</p>
        <p><i class="fa fa-map-pin"></i> 210, Aggarwal Tower, Rohini sec 9, New Delhi - 110085, INDIA</p>
        <p><i class="fa fa-phone"></i> Phone (India) : +91 9999 878 398</p>
        <p><i class="fa fa-envelope"></i> E-mail : AirPath.com</p>
        
      </div>
      <div class="col-md-2 col-sm-6 paddingtop-bottom">
        <h6 class="heading7">GENERAL LINKS</h6>
        <ul class="footer-ul">
          <li><a href="Career.jsp"> Career</a></li>
          <li><a href="Privacy.jsp"> Privacy Policy</a></li>
          <li><a href="tnc.jsp"> Terms & Conditions</a></li>
      
        </ul>
      </div>
      <div class="col-md-3 col-sm-6 paddingtop-bottom">
        <h6 class="heading7"><br></h6>
        <div class="post">
         <div class="col-md-6">
      <ul class="bottom_ul">
        <li><a href="#">AirPath.com</a></li>
        <li><a href="About.jsp">About us</a></li>
 
        <li><a href="contact.jsp">Contact us</a></li>
      </ul>
    </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 paddingtop-bottom">
        <div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-height="300" data-small-header="false" style="margin-bottom:15px;" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
         
        </div>
      </div>
    </div>
  </div>
</footer>


<div class="copyright">
  <div class="container">
    <div class="col-md-6">
      <p>© 2017 AirPath.com. All brands are trademarks of their respective owners.
      </p>
    </div>
   
  </div>
</div>
</font>

</body>
</html>