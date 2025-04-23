<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>knotspot</title>
<!-- This connects to dashboard.css file -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/auth.css">

<!-- This gives access to google font "inter" -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&family=JetBrains+Mono:ital,wght@0,100..800;1,100..800&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

<!-- This gives access to font awesome icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
	<div class="main-container">
	<div class ="form-box login">
	<form action="${pageContext.request.contextPath}/authentication" method="post">
	<h1>Login</h1>
	<div class="input-box">
	<input type="text" placeholder="Enter your username" required>
	<i class="fa-solid fa-user"></i>
	<c:if test="${not empty firstnameError}">
		<div class="errorDisplay">
			<p>${firstnameError}</p>
		</div>
	</c:if>
	</div>
	<div class="input-box">
	<input class="input-password" type="password" placeholder="Enter your password" required>
	</div>
	<div class="forgot-link">
	<a href="#">Forgot password ?</a>
	</div>
	<button type="submit" class="btn" name="login" value="login">Login</button>
	<h2 class="continue-break">or continue with</h2>
	<div class="google-box">
	<button class="social-btn">google</button>
	<i class="fa-brands fa-google"></i>
	</div>
	<p>By clicking continue, you agree to our <span class="highlighted">Terms of <br> Service</span> and <span class="highlighted">Privacy Policy</span></p>
	</form>
	</div>
	
	<!-- if c tag error then show active form of register  -->
	<div class ="form-box register">
	<form action="${pageContext.request.contextPath}/authentication" method="post">
	<h1>Register</h1>
	<div class="element-container">
	<div class="first-con">
	<div class="input-box">
	<input type="text" placeholder="First name*" name="firstname" required>
	<i class="fa-solid fa-user"></i>
	</div>
	<div class="add-input-box">
	<i class="fa-solid fa-plus"></i>
	</div>
	<div class="input-box">
	<input type="text" placeholder="Last name*" name="lastname" required>
	<i class="fa-solid fa-user"></i>
	</div>
	</div>
	<div class="second-con">
	<div class="input-box">
	<input type="email" placeholder="Email*" name="email" required>
	<i class="fa-solid fa-envelope"></i>
	</div>
	<div class="input-box">
	<input type="tel" placeholder="Contact name*" name="contact" required>
	<i class="fa-solid fa-phone"></i>
	</div>
	</div>
	<div class="third-con">
	<div class="radio-con">
	<input type="radio" name="gender" value="Male" required>&nbsp;Male
	<input type="radio" name="gender" value="Female" >&nbsp;Female
	</div>
	<div class="combo-box-con">
	<div class="input-box">
	<select class="city" name="city" required>
	<option value="" disabled selected>Address</option>
	<option>Koteshwor</option>
	<option>Bouddha</option>
	</select>
	</div>
	<div class="input-box">
	<input type="date" class="birthday" name="birthday" required>
	</div>
	</div>
	</div>
	
	<div class="last-con">
	<div class="input-box">
	<input type="text" placeholder="Username*" name="username" required>
	<i class="fa-solid fa-user"></i>
	</div>
	<div class="password-column">
	<div class="input-box">
	<input type="password" placeholder="Password*" name="password" required>
	</div>
	<div class="input-box">
	<input type="password" placeholder="Confirm password*" name="retypePassword" required>
	</div>
	</div>
	<div class="check-box-con">
	<label>
	<input type="checkbox">I agree to the <span style="color: blue">&nbsp;terms and conditions</span>
	</label>
	</div>
	</div>

	<button type="submit" class="btn" name="register" value="register">Register</button>
	<h2 class="continue-break">or continue with</h2>
	<div class="google-box">
	<button class="social-btn">google</button>
	<i class="fa-brands fa-google"></i>
	</div>
	</div>
	</form>
	</div>
	
	<div class="toggle-box">
		<img class="sliding-image" src="${pageContext.request.contextPath}/resources/login.jpg">
		<div class="toggle-pnl toggle-left">
			<h1>Hello there,<br><span class="greeting-spn">Welcome to Knot spot!</span></h1>
			<p>Don't have an account?</p>
			<button class="register-btn">Register</button>
		</div>
		<div class="toggle-pnl toggle-right">
			<h1>Welcome back!</h1>
			<p>Already have an account?</p>
			<button class="login-btn">Login</button>
		</div>
	</div>
	</div>
	
	
<!-- This connects to dashboard.js file -->
<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/auth.js"></script>
</body>
</html>