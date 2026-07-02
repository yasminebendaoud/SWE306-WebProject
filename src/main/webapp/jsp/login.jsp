<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Login | Luna e Vino</title>

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

			    <h2>Welcome Back</h2>
				
				<p>
				    Sign in to continue your Luna e Vino experience.
				</p>
			
			</div>
			
			<%
			String success = (String) request.getAttribute("success");
			if (success != null) {
			%>
			
			<div class="alert alert-success">
			    <%= success %>
			</div>
			
			<%
			}
			
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
			    action="${pageContext.request.contextPath}/LoginServlet">
			
				<div class="mb-3">
				    <label for="login" class="form-label">Username or Email</label>
				    <input
				        type="text"
				        class="form-control"
				        id="login"
				        name="login"
				        placeholder="Enter your username or email"
				        value="${login}"
				        required>
				</div>
			
			    <div class="mb-3">
			        <label for="password" class="form-label">Password</label>
			        <input
			            type="password"
			            class="form-control"
			            id="password"
			            name="password"
			            placeholder="Enter your password"
			            required>
			    </div>
			
			
			    <button type="submit" class="btn btn-dark w-100">
			        Sign In
			    </button>
			
			    <div class="text-center mt-4">
			        Don't have an account?
					<a href="${pageContext.request.contextPath}/jsp/register.jsp"
					   class="login-link">
					    Register
					</a>
			    </div>
			
			</form>
	
	    </div>
	
	</div>

</div>

</body>

</html>