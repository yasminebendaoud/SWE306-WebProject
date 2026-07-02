<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Register | Luna e Vino</title>

<!-- Bootstrap -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Google Fonts -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&family=Poppins:wght@300;400;500;600&display=swap"
rel="stylesheet">

<!-- CSS -->

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/style.css">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/auth.css">

</head>

<body>

<div class="auth-container">

    <div class="auth-image">

    </div>

    <div class="auth-form">

	    <div class="form-wrapper">
	
	        <div class="brand">
			    <h1>Luna e Vino</h1>
			</div>
	        
	        <div class="auth-header">

			    <h2>Create Your Account</h2>
			
			    <p>
			        Join Luna e Vino and enjoy a seamless dining experience.
			    </p>
			
			</div>
			
			<%
			String error = (String) request.getAttribute("error");
			if (error != null) {
			%>
			
			<div class="alert alert-danger">
			    <%= error %>
			</div>
			
			<%
			}
			%>
			
			<form
			    class="register-form"
			    method="post"
			    action="${pageContext.request.contextPath}/RegisterServlet">

			    <div class="mb-3">
			        <label for="username" class="form-label">Username</label>
			        <input
			            type="text"
			            class="form-control"
			            id="username"
			            name="username"
			            placeholder="Enter your username"
			            value="${username}"
			            required>
			    </div>
			
			    <div class="mb-3">
			        <label for="email" class="form-label">Email Address</label>
			        <input
			            type="email"
			            class="form-control"
			            id="email"
			            name="email"
			            placeholder="Enter your email"
			            value="${email}"
			            required>
			    </div>
			
			    <div class="mb-3">
			        <label for="phoneNumber" class="form-label">Phone Number</label>
			        <input
			            type="tel"
			            class="form-control"
			            id="phoneNumber"
			            name="phoneNumber"
			            placeholder="+60 12-345 6789"
			            value="${phoneNumber}"
			            required>
			    </div>
			
			    <div class="mb-3">
			        <label for="password" class="form-label">Password</label>
			        <input
			            type="password"
			            class="form-control"
			            id="password"
			            name="password"
			            placeholder="Create a password"
			            required>
			    </div>
			
			    <div class="mb-4">
			        <label for="confirmPassword" class="form-label">Confirm Password</label>
			        <input
			            type="password"
			            class="form-control"
			            id="confirmPassword"
			            name="confirmPassword"
			            placeholder="Confirm your password"
			            required>
			    </div>
			
			    <button type="submit" class="btn btn-dark w-100">
			        Create Account
			    </button>
			
			    <div class="text-center mt-4">
			        Already have an account?
			        <a href="${pageContext.request.contextPath}/jsp/login.jsp"
					   class="login-link">
					    Sign In
					</a>
			    </div>
			
			</form>
	
	    </div>
	
	</div>

</div>

<script>

const registerForm = document.querySelector(".register-form");

registerForm.addEventListener("submit", function(event) {

    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirmPassword").value;

    if (password !== confirmPassword) {

        event.preventDefault();

        alert("Passwords do not match.");

    }

});

</script>

</body>

</html>