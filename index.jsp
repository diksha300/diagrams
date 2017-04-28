<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="login"  ng-controller="login_controller">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Login Form</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>

 <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
    @import url(http://fonts.googleapis.com/css?family=Roboto);
    


.loginmodal-container {
  padding: 30px;
  max-width: 350px;
  width: 100% !important;
  background-color: #F7F7F7;
  margin: 0 auto;
  border-radius: 2px;
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  overflow: hidden;
  font-family: roboto;
}

.loginmodal-container h1 {
  text-align: center;
  font-size: 1.8em;
  font-family: roboto;
}

.loginmodal-container input[type=submit] {
  width: 100%;
  display: block;
  margin-bottom: 10px;
  position: relative;
}

.loginmodal-container input[type=text], input[type=password] {
  height: 44px;
  font-size: 16px;
  width: 100%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}

.loginmodal-container input[type=text]:hover, input[type=password]:hover {
  border: 1px solid #b9b9b9;
  border-top: 1px solid #a0a0a0;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}

.loginmodal {
  text-align: center;
  font-size: 14px;
  font-family: 'Arial', sans-serif;
  font-weight: 700;
  height: 36px;
  padding: 0 8px;

}

.loginmodal-submit {
 
  border: 0px;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1); 
  background-color: #4d90fe;
  padding: 17px 0px;
  font-family: roboto;
  font-size: 14px;

}

.loginmodal-submit:hover {

  border: 0px;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #357ae8;

}

.loginmodal-container a {
  text-decoration: none;
  color: #666;
  font-weight: 400;
  text-align: center;
  display: inline-block;
  opacity: 0.6;
  transition: opacity ease 0.5s;
} 

.login-help{
  font-size: 12px;
}
    </style>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    
    </script>
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
      
    </ul>

  </div>
</nav>


    	  <div class="modal-dialog">
				<div class="loginmodal-container">
					<h1>Login to Your Account</h1><br>
				  <input type="text" class="form-control" ng-model="userName" placeholder="Enter the name" required="" autofocus="" />
      <input type="password" class="form-control" ng-model="password" placeholder="Enter Password" required=""/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" ng-click="validation()">Login</button>  
       
				  <div class="login-help">
					<a href="Reg.jsp">Register</a> - <a href="#">Forgot Password</a>
				  </div>
				</div>
			</div>

		  <script type="text/javascript" src="angular.min.js"></script>
<script type="text/javascript" src="main.js"></script>

 <script>
var loginModule=angular.module('login',[]);
loginModule.controller('login_controller',function ($scope,$http,$window)
{
var urlBase="http://localhost:8080/RegisterD";
// $http.defaults.header.post["Content-Type"]="application/x-www-form-urlencoded"; 
$scope.validation=function validation(){
	  if($scope.userName=="" || $scope.password==""){
          alert("Please fill in the data");
   }
	  else{
		  if($scope.userName=="Diksha" && $scope.password=='yui'){
			  alert("Successful");
              $window.location="Admin.jsp";
        }
        else{

	  
$http.post(urlBase+'/login/'+$scope.userName+'/'+$scope.password).success(function(data){
	
	 if(data=="true")
     {
            alert("Successful");
            $window.location="final.jsp";
     }
     
     else{
            alert("Unsuccessful");
            $window.location="index.jsp";
     }  
             

});
        }}
};
});

</script>


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
          <li><a href="Tandc.jsp"> Terms & Conditions</a></li>
          
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