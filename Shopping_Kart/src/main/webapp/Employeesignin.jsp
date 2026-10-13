<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Portal</title>
<style>
	body {
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		background-color: #f0f2f5;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		margin: 0;
	}

	.container {
		background-color: #fff;
		padding: 40px;
		border-radius: 10px;
		box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
		text-align: center;
		width: 300px;
	}

	h2 {
		margin-bottom: 30px;
		color: #333;
	}

	input[type="submit"] {
		width: 100%;
		padding: 12px;
		margin: 10px 0;
		border: none;
		border-radius: 5px;
		background-color: #007bff;
		color: white;
		font-size: 16px;
		cursor: pointer;
		transition: background-color 0.3s ease;
	}

	input[type="submit"]:hover {
		background-color: #0056b3;
	}
</style>
</head>
<body>

	<div class="container">
		<h2>Welcome to Employee Portal</h2>
		<form action="Employeereg.jsp">
			<input type="submit" value="Signup">
		</form>
		<form action="EmployeeLogin.jsp">
			<input type="submit" value="Signin">
		</form>
	</div>

</body>
</html>
