<%@ page language="java" 
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
	<div class="container" style="border:2px solid black; margin:30px; padding:30px;">
		<form action="loginCheck.spring" method="post">
			<div class="form-outline mb-2">
				<label class="form-label">Employee ID</label> <input type="ENUM"
					name="email" class="form-control" required />
			</div>

			<div class="form-outline mb-2">
				<label class="form-label">Password</label> <input type="password"
					name="password" class="form-control" required />
			</div>
			<input type="submit" class="btn btn-outline-primary" value="Log In" />
		</form>
		<span style="color: red">${requestScope.msg}</span>
	</div>
<body></body>
</html>