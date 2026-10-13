<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Login</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f4f4f4;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	}

	.login-container {
		background-color: #fff;
		padding: 30px;
		border-radius: 10px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		width: 320px;
	}

	h2 {
		text-align: center;
		margin-bottom: 20px;
		color: #333;
	}

	label {
		display: block;
		margin-top: 10px;
		font-weight: bold;
	}

	input[type="text"],
	input[type="password"] {
		width: 100%;
		padding: 8px;
		margin-top: 5px;
		border: 1px solid #ccc;
		border-radius: 5px;
	}

	.links {
		margin-top: 10px;
		text-align: center;
	}

	.links a {
		margin: 0 10px;
		text-decoration: none;
		color: #007BFF;
		font-size: 14px;
	}

	.links a:hover {
		text-decoration: underline;
	}

	input[type="submit"] {
		width: 100%;
		margin-top: 20px;
		padding: 10px;
		background-color: #4CAF50;
		color: white;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		font-size: 16px;
	}

	input[type="submit"]:hover {
		background-color: #45a049;
	}
</style>
</head>
<body>
	<div class="login-container">
		<h2>Customer Login</h2>
		<form action="custmerlogin" >
			<label for="username">Username</label>
			<input type="text" name="usename" id="username" required>

			<label for="password">Password</label>
			<input type="password" name="pass" id="password" required>

			<div class="links">
				<a href="forgot.jsp">Forgot Password?</a>
				<a href="custermersignup.jsp">New User</a>
			</div>

			<input type="submit" value="Login">
		</form>
	</div>
</body>
</html>
