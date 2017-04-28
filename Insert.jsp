<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="taskManagerApp" ng-controller="taskManagerController">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="shortcut icon" href="">
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
      <li><a href="Book.jsp">Book flights</a></li>
      <li><a href="About.jsp">About us</a></li>
      
    </ul>

  </div>
</nav>

<div>
<div  ng-controller="taskManagerController">

 <center><div class="container">
  <label><b>Flight Id</b></label>
    <input type="number" placeholder="Enter Arrival date" ng-model="f_id" required><br><br>
 
    <label><b>Arrival Date</b></label>
    <input type="text" placeholder="Enter Arrival date" ng-model="arr_date" required><br><br>
    
     <label><b>Departure time</b></label>
    <input type="text" placeholder="Enter Departure time" ng-model="dep_time" required><br><br>
    
     <label><b>Departure date</b></label>
    <input type="text" placeholder="Enter Departure date" ng-model="dep_date" required><br><br>
    
     <label><b>Class</b></label>
    <input type="text" placeholder="Enter Class" ng-model="class_type" required><br><br>
    
 <label><b> Location</b></label>
  
      <select ng-model="from_loc"  value="Bangalore" required>
  <option value="Bangalore" ng-model="slocation">Bangalore</option>
  <option value="Kolkata" ng-model="slocation">Kolkata</option>
  <option value="Delhi" ng-model="slocation">Delhi</option>
   <option value="Bhubaneswar"  ng-model="slocation">Bhubaneswar</option>
  <option value="Pune" ng-model="slocation">Pune</option>
   <option value="Mumbai" ng-model="slocation">Mumbai</option>
</select>
    <br><br>

 <label><b>Destination</b></label>
  
     <select ng-model="to_loc"  required>
  <option value="Bangalore" ng-model="dlocation">Bangalore</option>
  <option value="Kolkata" ng-model="dlocation" selected>Kolkata</option>
  <option value="Delhi" ng-model="dlocation">Delhi</option>
   <option value="Bhubaneswar"  ng-model="dlocation">Bhubaneswar</option>
  <option value="Pune" ng-model="dlocation">Pune</option>
   <option value="Mumbai" ng-model="dlocation">Mumbai</option>
</select>
<br><br>

 <label><b>Arrival Time</b></label>
    <input type="text" placeholder="Enter Arrival date" ng-model="arr_time" required><br><br>
 
 <label><b> Airport</b></label>
   <select ng-model="air_code" value="1" required>
  <option value="1" ng-model="plocation">Bangalore</option>
  <option value="2"  ng-model="plocation">Kolkata</option>
  <option value="3"  ng-model="plocation">Bhubaneswar</option>
  <option value="4" ng-model="plocation">Pune</option>
   <option value="5" ng-model="plocation">Mumbai</option>
   <option value="6" ng-model="plocation">Delhi</option>
</select>
<br><br>

<label><b>Route no</b></label>
    <input type="number" placeholder="Enter Arrival date" ng-model="route_no" required><br><br>
    

 <label><b>Flight name</b></label>
    <input type="text" placeholder="Enter Arrival date" ng-model="f_name" required><br><br>
    
     <label><b>Flight amount</b></label>
    <input type="text" placeholder="Enter Arrival date" ng-model="f_amt" required><br><br>

    <div class="clearfix">
     <button ng-click="clickButton()" class="btn-panel-big">Submit</button>
    </div>
  </div></center>



</div>
</div>

<script>

var taskManagerModule = angular.module('taskManagerApp', []);
taskManagerModule.controller('taskManagerController', function ($scope,$http,$window) 
{
 var urlBase="http://localhost:8080/RegisterD";
 $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";
 
//add a new task
 $scope.clickButton = function clickButton()
 {
	 alert("In function");
/*	  if($scope.arr_date=="" || $scope.dep_date=="" || $scope.class_type == "" || $scope.from_loc == ""||$scope.to_loc == ""
			 ||$scope.air_code == "")
	      {
		   alert("Insufficient Data! Please provide values");
		  }
	 else
	*/	  
   $http.post(urlBase + '/insert/' +$scope.f_id+'/'+$scope.arr_date+'/'+$scope.dep_time+'/'+$scope.dep_date+'/'+$scope.class_type+'/'+$scope.from_loc+'/'+
		   $scope.to_loc+'/'+$scope.arr_time+'/'+$scope.air_code+'/'+$scope.route_no+'/'+$scope.f_name+'/'+$scope.f_amt).success(function(data) {
			
    alert("Added");
    
   
    $scope.users = data; 
    $scope.f_id="";
    $scope.arr_date="";
    $scope.dep_time="";
    $scope.dep_date="";
    $scope.class_type="";
    $scope.from_loc="";
    $scope.to_loc="";
    $scope.arr_time="";
    $scope.air_code="";
    $scope.route_no="";
    $scope.f_name="";
    $scope.f_amt="";
  
      });
		 
	 alert("End of function");
 }
 
}); 

</script>
<br><br><br><br><br><br><br><br><br><br><br><br>
<font color="white">
<link href="https://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<!--footer start from here-->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-6 footerleft ">
        <div class="logofooter"> Logo</div>
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