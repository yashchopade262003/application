<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Session Check</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f2f2f2;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	}

	.container {
		background-color: white;
		padding: 30px;
		border-radius: 10px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		text-align: center;
		width: 300px;
	}

	h1 {
		color: green;
	}

	a {
		color: #007BFF;
		text-decoration: none;
		font-size: 16px;
	}

	a:hover {
		text-decoration: underline;
	}
</style>
</head>
<body>

	<%
		HttpSession session1 = request.getSession();
		String un = (String) session1.getAttribute("un");
		String pass = (String) session1.getAttribute("pass1");
	%>
	
	<div class="container">
		<%
			if (un != null && pass != null) {
		%>
			<h1>Login Successful</h1>
		<%
			} else {
		%>
			<h1><a href="custermersignin.jsp">Login First</a></h1>
		<%
			}
		%>
	</div>

</body>
</html>
