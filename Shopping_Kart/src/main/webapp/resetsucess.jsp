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
		background-color: #f0f0f0;
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
		width: 300px;
	}

	.message {
		font-size: 18px;
		color: #333;
		margin-bottom: 20px;
	}

	input[type="submit"] {
		padding: 10px 20px;
		background-color: #007bff;
		color: white;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		font-size: 16px;
	}

	input[type="submit"]:hover {
		background-color: #0056b3;
	}
</style>
</head>
<body>
	<div class="container">
		<%
		String msg = (String) request.getAttribute("msg");
		%>
		<div class="message"><%=msg != null ? msg : "No message available." %></div>

		<form action="custermersignin.jsp">
			<input type="submit" value="Go to Sign In">
		</form>
	</div>
</body>
</html>
