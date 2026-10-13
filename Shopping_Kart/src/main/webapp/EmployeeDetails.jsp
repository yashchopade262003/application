<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Management</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f2f2f2;
		text-align: center;
		margin-top: 100px;
	}

	h1 {
		color: #333;
	}

	form {
		margin: 15px auto;
	}

	input[type="submit"],
	input[type="button"] {
		background-color: #4CAF50;
		color: white;
		padding: 12px 24px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		font-size: 16px;
		transition: background-color 0.3s ease;
	}

	input[type="submit"]:hover,
	input[type="button"]:hover {
		background-color: #45a049;
	}
</style>
</head>
<body>

	<h1>Product Management Panel</h1>

	<form action="addproduct.jsp">
		<input type="submit" value="Add Product">
	</form>

	<form action="updateproduct.jsp">
		<input type="submit" value="Update Product">
	</form>

	<form action="deleteproduct.jsp">
		<input type="submit" value="Delete Product">
	</form>
	
	
	<form action="getproduct">
	<input type="submit"value="Get all produ8ct">
	</form>

</body>
</html>
