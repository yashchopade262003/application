<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            background-color: whte;
        }
        h2 {
            color: white;
            font-size: 3rem;
            margin-bottom: 40px;
        }
        form {
            margin: 15px;
        }
        input[type="submit"] {
            background-color: white;
            color: #2575fc;
            padding: 12px 25px;
            font-size: 1.2rem;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #2575fc;
            color: white;
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>
    <h2><%= "Welcome" %></h2>

    <form action="custmer.jsp">
        <input type="submit" value="Custmer">
    </form>

    <form action="Employeesignin.jsp">
        <input type="submit" value="Employee">
    </form>
</body>
</html>
