<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #eef2f3;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .login-container {
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
        width: 350px;
        text-align: center;
    }

    h2 {
        margin-bottom: 20px;
        color: #333;
    }

    input[type="text"],
    input[type="password"] {
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
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        margin-bottom: 10px;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .link-btn {
        background-color: #6c757d;
    }

    .link-btn:hover {
        background-color: #5a6268;
    }
</style>
</head>
<body>

<div class="login-container">
    <h2>Employee Login</h2>
    <form action="EmployeeLogin">
        <input type="text" name="name" placeholder="Enter Username" required><br>
        <input type="password" name="pass" placeholder="Enter Password" required><br>
        <input type="submit" value="Login">
    </form>

    <form action="empforgot.jsp">
        <input type="submit" class="link-btn" value="Forgot Password">
    </form>
</div>

</body>
</html>
