<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Registration</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
<style>
    * {
        box-sizing: border-box;
    }

    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to right, #ffecd2, #fcb69f);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        background-color: white;
        padding: 40px 30px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
    }

    input[type="number"],
    input[type="text"],
    input[type="tel"],
    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 15px;
    }

    input[type="submit"],
    .link-button {
        width: 100%;
        padding: 12px;
        background-color: #ff7e5f;
        color: white;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 15px;
        transition: background 0.3s ease;
    }

    input[type="submit"]:hover,
    .link-button:hover {
        background-color: #e64c3c;
    }

    .extra-links {
        margin-top: 15px;
        text-align: center;
    }

    .extra-links a {
        text-decoration: none;
        color: #555;
        font-size: 14px;
    }

    .extra-links a:hover {
        color: #000;
    }
</style>
</head>
<body>

    <div class="container">
        <h2>Employee Registration</h2>
        <form action="EmployeeReg">
            <input type="number" name="id" placeholder="Employee ID" required>
            <input type="text" name="name" placeholder="Name" required>
            <input type="tel" name="mob" pattern="[0-9]{10}" placeholder="Mobile Number" required>
            <input type="text" name="designation" placeholder="Designation" required>
            <input type="number" name="sal" placeholder="Salary" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="pass" placeholder="Password" required>
            <input type="submit" value="Register">
        </form>

        <div class="extra-links">
            <p>Already have an account?</p>
            <a href="EmployeeLogin.jsp">Go to Login</a>
        </div>
    </div>

</body>
</html>
