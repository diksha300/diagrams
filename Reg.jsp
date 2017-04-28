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
      
    </ul>

  </div>
</nav>

<div>
<div>

 <center><div class="container">
    <label><b>Id</b></label>
    <input type="number" placeholder="Enter Id" ng-model="p_id" required><br><br>
    
     <label><b>Address</b></label>
    <input type="text" placeholder="Enter Address" ng-model="p_address" required><br><br>
    
     <label><b>Mobile no</b></label>
    <input type="number" placeholder="Enter Mobile no" ng-model="p_mobno" required><br><br>
    
 <label><b>Gender</b></label>
    <input type="text" placeholder="Enter Gender" ng-model="p_gender" required><br><br>

 <label><b>Age</b></label>
    <input type="number" placeholder="Enter Age" ng-model="p_age" required><br><br>

 <label><b>Name</b></label>
    <input type="text" placeholder="Enter Name" ng-model="p_name" required><br><br>

 <label><b>Flight id</b></label>
    <input type="number" placeholder="Enter Flight Id" ng-model="f_id" required><br><br>


    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" ng-model="p_pwd" required><br><br>

   
    <input type="checkbox" checked="checked"> Remember me
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <div class="clearfix">
     <button ng-click="addUser()" class="btn-panel-big">Register</button>
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
 $scope.addUser = function addUser() 
 {
	 alert("In function");
	 /* if($scope.p_id=="" || $scope.p_address=="" || $scope.p_mobno == "" || $scope.p_gender == ""||$scope.p_age == ""
			 ||$scope.p_name == ""||$scope.f_id == ""||$scope.p_pwd == "")
	      {
		   alert("Insufficient Data! Please provide values");
		  }
	 else
		  */
   $http.post(urlBase + '/register/' +$scope.p_id+'/'+$scope.p_address+'/'+$scope.p_mobno+'/'+$scope.p_gender+'/'+
		   $scope.p_age+'/'+$scope.p_name+'/'+$scope.f_id+'/'+$scope.p_pwd).success(function(data) {
			
    alert("User added");
			   
    $window.location="Success.jsp";
    $scope.users = data; 
    $scope.p_id="";
    $scope.p_address="";
    $scope.p_mobno="";
    $scope.p_gender="";
    $scope.p_age="";
    $scope.p_name="";
    $scope.f_id="";
    $scope.p_pwd="";
      })
		 
	 alert("End of function");
		 }
 
}); 

</script>
<br><br><br><br><br>
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