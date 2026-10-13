<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Login Status</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f4f4f4;
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
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		text-align: center;
	}

	a {
		text-decoration: none;
		color: #007bff;
		font-size: 16px;
	}

	a:hover {
		text-decoration: underline;
	}
</style>
</head>
<body>

<div class="container">
<%
	HttpSession un = request.getSession();
	String username = (String) un.getAttribute("un");
	String pass = (String) un.getAttribute("pass");

	if (un != null && pass != null) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeDetails.jsp");
		dispatcher.forward(request, response);
	} else {
%>
	<h2>You are not logged in</h2>
	<a href="EmployeeLogin.jsp">Login Here</a>
<%
	}
%>
</div>

</body>
</html>
