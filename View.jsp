<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="bDetails" ng-controller="detailController">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body background="https://images.trvl-media.com/media/content/expus/graphics/launch/home/tvly/150324_flights-hero-image_1330x742.jpg">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">AirPath.com</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp">Home</a></li>
      <li><a href="index.jsp">Login</a></li>
   
      <li><a href="About.jsp">About us</a></li>
        <li><a href="Logout.jsp">Logout</a></li>
    </ul>

  </div>
</nav>
<font color="white">

<table>
<thead>
<tr>
     <th>Flight Details</th>
</tr>
<tr>
      <th>Flight Id</th>
      <th>Arrival date</th>
      <th>Departure time</th>
      <th>Departure date</th>
      <th>Class type</th>
      <th>From location</th>
      <th>To location</th>
      <th>Arrival time</th>
      <th>Airport code</th>
      <th>Route no</th>
      <th>Flight name</th>
      <th>Flight amount</th>
      
</tr> 
</thead>
<tbody>
      <tr ng-repeat="flight in detail">
             <td>{{flight.f_id}}</td> 
              <td>{{flight.arr_date}}</td>
             <td>{{flight.dep_time}}</td>
             <td>{{flight.dep_date}}</td>
             <td>{{flight.class_type}}</td>
             <td>{{flight.from_loc}}</td>
             <td>{{flight.to_loc}}</td>
              <td>{{flight.arr_time}}</td>
              <td>{{flight.air_code}}</td>
               <td>{{flight.route_no}}</td>
                <td>{{flight.f_name}}</td>
                 <td>{{flight.f_amt}}</td>
        
   </tr>
   
</tbody>
</table>
</font>

<script>
var detailModule=angular.module('bDetails',[]);
detailModule.controller('detailController',function ($scope,$http)
{
var urlBase="http://localhost:8080/RegisterD";
//$http.defaults.header.post["Content-Type"]="application/x-www-form-urlencoded";

$http.get(urlBase+'/view').success(function(data){
       $scope.detail=data;
       
}).error(function(data,status){
console.error('Reported error',status,data);
});

});


</script>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
<!--footer start from here-->

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