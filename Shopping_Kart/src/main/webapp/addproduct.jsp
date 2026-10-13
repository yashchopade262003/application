<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f9f9f9;
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
		width: 300px;
	}

	h2 {
		text-align: center;
		margin-bottom: 20px;
	}

	label {
		display: block;
		margin: 10px 0 5px;
		font-weight: bold;
	}

	input[type="text"] {
		width: 100%;
		padding: 8px;
		border: 1px solid #ccc;
		border-radius: 5px;
	}

	input[type="submit"] {
		margin-top: 15px;
		width: 100%;
		padding: 10px;
		background-color: #4CAF50;
		color: white;
		border: none;
		border-radius: 5px;
		font-size: 16px;
		cursor: pointer;
	}

	input[type="submit"]:hover {
		background-color: #45a049;
	}
</style>
</head>
<body>
	<div class="container">
		<h2>Add Product</h2>
		<form action="add" method="post">
			<label for="id">Product ID:</label>
			<input type="text" name="id" id="id" required>

			<label for="pname">Product Name:</label>
			<input type="text" name="pname" id="pname" required>

			<label for="category">Category:</label>
			<input type="text" name="category" id="category" required>

			<input type="submit" value="Add">
		</form>
	</div>
</body>
</html>
