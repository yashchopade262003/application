<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f0f0f0;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	}

	.container {
		background-color: #fff;
		padding: 30px;
		border-radius: 10px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		text-align: center;
		width: 300px;
	}

	h1 {
		color: green;
		font-size: 20px;
		margin-bottom: 20px;
	}

	form {
		margin: 10px 0;
	}

	input[type="submit"] {
		width: 100%;
		padding: 10px;
		margin-top: 10px;
		background-color: #007BFF;
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
String msg = (String) request.getAttribute("errorMessage");
%>
<%
if(msg!=null){
%>

	<div id="error">
	<h2><%=msg%></h2>
	</div>
	<script type="text/javascript">
	   setTimeout(function () {
		document.getElementById("error").style.display="none";
	}, 3000);
	</script>
	<%} %>
		

		<form action="custermersignup.jsp">
			<input type="submit" value="Sign Up">
		</form>

		<form action="custermersignin.jsp">
			<input type="submit" value="Sign In">
		</form>
	</div>
</body>
</html>
