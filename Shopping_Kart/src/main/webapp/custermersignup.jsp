<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Signup</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f0f0f0;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	}

	.signup-container {
		background-color: white;
		padding: 30px;
		border-radius: 10px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		width: 350px;
	}

	h2 {
		text-align: center;
		color: #333;
		margin-bottom: 20px;
	}

	label {
		display: block;
		margin-top: 10px;
		font-weight: bold;
	}

	input[type="text"],
	input[type="number"],
	input[type="password"] {
		width: 100%;
		padding: 8px;
		margin-top: 5px;
		border: 1px solid #ccc;
		border-radius: 5px;
		box-sizing: border-box;
	}

	.links {
		margin-top: 10px;
		text-align: center;
	}

	.links a {
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

	<div class="signup-container">
		<h2>Customer Signup</h2>
		<form action="custermerRegester1" >
			<label for="id">Customer ID</label>
			<input type="number" name="id" id="id" required>

			<label for="name">Name</label>
			<input type="text" name="name" id="name" required>

			<label for="mobno">Mobile No</label>
			<input type="tel" name="mobno" id="mobno" required>

			<label for="email">Email</label>
			<input type="text" name="email" id="email" required>

			<label for="username">Username</label>
			<input type="text" name="username" id="username" required>

			<label for="pass">Password</label>
			<input type="password" name="pass" id="pass" required>

			<div class="links">
				<a href="custermersignin.jsp">Already have an account?</a>
			</div>

			<input type="submit" value="Signup">
		</form>
	</div>

</body>
</html>
