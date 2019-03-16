<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html lang="en">
<head>
	<title>Login V1</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="visitors/img/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="visitors/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="visitors/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="visitors/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="visitors/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="visitors/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="visitors/css/util.css">
	<link rel="stylesheet" type="text/css" href="visitors/css/main_login.css">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="visitors/css/linearicons.css">
			<link rel="stylesheet" href="visitors/css/font-awesome.min.css">
			<link rel="stylesheet" href="visitors/css/bootstrap.css">
			<link rel="stylesheet" href="visitors/css/magnific-popup.css">			
			<link rel="stylesheet" href="visitors/css/nice-select.css">							
			<link rel="stylesheet" href="visitors/css/animate.min.css">
			<link rel="stylesheet" href="visitors/css/owl.carousel.css">			
			<link rel="stylesheet" href="visitors/css/jquery-ui.css">			
			<link rel="stylesheet" href="visitors/css/main.css">
</head>
<body>
	

<jsp:include page="/header.jsp" />

	<div class="limiter">
            
		<div class="container-login100">
			<div class="wrap-login100">
                            
				<div class="login100-pic js-tilt" data-tilt>
					<img src="visitors/img/img-01.png" alt="IMG">
				</div>

                            <form class="login100-form validate-form" action="createUser" method="post">
                                    <s:if test="messageBean.errorMessage != null">
                                    <div class="alert alert-danger">
                                        <s:property value="messageBean.errorMessage"/>
</div>
                                    </s:if>
					<span class="login100-form-title">
						Sign Up
					</span>
                                    
                                    
                                        <div class="wrap-input100 validate-input" data-validate = "Name is required">
						<input class="input100" type="text" name="userBean.userName" placeholder="Your Name">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>
                                    
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="userBean.useremailId" placeholder="Your Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="userBean.userpassword" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
                                    
                                    <div class="wrap-input100 validate-input" data-validate = "Repeat Password is required">
						<input class="input100" type="password" name="userBean.userRepeatPassword" placeholder="Repeat Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Sign UP
						</button>
					</div>

					

					<div class="text-center p-t-70">
						<a class="txt2" href="login">
							Already registered. Sign In here to continue
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="visitors/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="visitors/vendor/bootstrap/js/popper.js"></script>
	<script src="visitors/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="visitors/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="visitors/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="visitors/js/main_login.js"></script>
        
         <script src="visitors/js/vendor/jquery-2.2.4.min.js"></script>
			<script src="visitors/js/popper.min.js"></script>
			<script src="visitors/js/vendor/bootstrap.min.js"></script>			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>			
  			<script src="visitors/js/easing.min.js"></script>			
			<script src="visitors/js/hoverIntent.js"></script>
			<script src="visitors/js/superfish.min.js"></script>	
			<script src="visitors/js/jquery.ajaxchimp.min.js"></script>
			<script src="visitors/js/jquery.magnific-popup.min.js"></script>	
    		<script src="visitors/js/jquery.tabs.min.js"></script>						
			<script src="visitors/js/jquery.nice-select.min.js"></script>	
            <script src="visitors/js/isotope.pkgd.min.js"></script>			
			<script src="visitors/js/waypoints.min.js"></script>
			<script src="visitors/js/jquery.counterup.min.js"></script>
			<script src="visitors/js/simple-skillbar.js"></script>							
			<script src="visitors/js/owl.carousel.min.js"></script>							
			<script src="visitors/js/mail-script.js"></script>	
			<script src="visitors/js/main.js"></script>	

</body>
</html>