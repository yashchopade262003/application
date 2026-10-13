<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message Page</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background: #f0f4f8;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		margin: 0;
	}

	.container {
		background-color: #fff;
		padding: 30px;
		border-radius: 8px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		text-align: center;
	}

	h1 {
		color: #333;
		margin-bottom: 20px;
	}

	a {
		display: inline-block;
		padding: 10px 20px;
		background-color: #007bff;
		color: white;
		text-decoration: none;
		border-radius: 5px;
		transition: background-color 0.3s ease;
	}

	a:hover {
		background-color: #0056b3;
	}
</style>
</head>
<body>
	<%
		String msg = (String) request.getAttribute("message");
	%>
	<div class="container">
		<h1><%= msg != null ? msg : "No message found" %></h1>
		<a href="EmployeeLogin.jsp">Back to Login</a>
	</div>
</body>
</html>
