<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<form action="">
	<h1>Login</h1>
	<div class="input-box">
	<input type="text" placeholder="Enter your username" required>
	<i class="fa-solid fa-user"></i>
	</div>
	<div class="input-box">
	<input type="password" placeholder="Enter your password" required>
	<i class="fa-solid fa-eye-slash"></i>
	</div>
	<div class="forgot-link">
	<a href="#">Forgot password ?</a>
	</div>
	<button type="submit" class="btn">Login</button>
	<h2 class="continue-break">or continue with</h2>
	<div class="google-box">
	<button class="social-btn">google</button>
	<i class="fa-brands fa-google"></i>
	</div>
	<p>By clicking continue, you agree to our <span class="highlighted">Terms of <br> Service</span> and <span class="highlighted">Privacy Policy</span></p>
	</form>
	</div>
	
	<div class ="form-box register">
	<form action="">
	<h1>Register</h1>
	<div class="input-box">
	<input type="text" placeholder="First name*" required>
	<i class="fa-solid fa-user"></i>
	</div>
	<div class="input-box">
	<input type="text" placeholder="Last name*" required>
	<i class="fa-solid fa-eye-slash"></i>
	</div>
	<div class="input-box">
	<input type="tel" placeholder="Contact name*">
	<i class="fa-solid fa-eye-slash"></i>
	</div>
	<div class="input-box">
	<input type="text" placeholder="Enter your username" required>
	<i class="fa-solid fa-user"></i>
	</div>
	<div class="input-box">
	<input type="password" placeholder="Enter your password" required>
	<i class="fa-solid fa-eye-slash"></i>
	</div>
	<div class="input-box">
	<input type="checkbox"><p>I agree to the <span style="color: blue">terms and conditions</span></p>
	<i class="fa-solid fa-eye-slash"></i>
	</div>
	<button type="submit" class="btn">Submit</button>
	<h2 class="continue-break">or continue with</h2>
	<div class="google-box">
	<button class="social-btn">google</button>
	<i class="fa-brands fa-google"></i>
	</div>
	<p>By clicking continue, you agree to our <span class="highlighted">Terms of <br> Service</span> and <span class="highlighted">Privacy Policy</span></p>
	</form>
	</div>
	
	<div class="toggle-box">
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