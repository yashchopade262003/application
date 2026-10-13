<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
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
		padding: 30px;
		border-radius: 10px;
		box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
		width: 300px;
		text-align: center;
	}

	h2 {
		margin-bottom: 20px;
		color: #333;
	}

	input[type="text"] {
		width: 100%;
		padding: 10px;
		margin-bottom: 15px;
		border: 1px solid #ccc;
		border-radius: 5px;
		font-size: 14px;
	}

	input[type="submit"] {
		width: 100%;
		padding: 10px;
		background-color: #28a745;
		color: white;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		font-size: 16px;
	}

	input[type="submit"]:hover {
		background-color: #218838;
	}
</style>
</head>
<body>

	<div class="container">
		<h2>Reset Your Password</h2>
		<form action="EmployeeUpdate">
			<input type="text" name="pass" placeholder="Enter New Password" required>
			<input type="submit" value="Reset">
		</form>
	</div>

</body>
</html>
