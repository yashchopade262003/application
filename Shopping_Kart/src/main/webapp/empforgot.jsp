<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to right, #74ebd5, #ACB6E5);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        animation: fadeIn 1s ease-in-out;
    }

    .container {
        background-color: #ffffff;
        padding: 40px 30px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 350px;
        text-align: center;
    }

    h2 {
        margin-bottom: 25px;
        color: #333;
        font-weight: 600;
    }

    input[type="number"] {
        width: 100%;
        padding: 12px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        transition: 0.3s;
    }

    input[type="number"]:focus {
        outline: none;
        border-color: #74ebd5;
        box-shadow: 0 0 5px #74ebd5;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #5A67D8;
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 16px;
        font-weight: 500;
        transition: background 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #434190;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-10px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
</head>
<body>

    <div class="container">
        <h2>Reset Your Password</h2>
        <form action="empreset">
            <input type= "tel"name="mob" placeholder="Enter Mobile Number" required>
            <input type="submit" value="Reset">
        </form>
    </div>

</body>
</html>
