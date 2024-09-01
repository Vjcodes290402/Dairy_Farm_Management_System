<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Animal Added Successfully</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            text-align: center;
        }
        .container {
        max-width: 400px;
        margin: 50px auto;
        background-color: #fff;
        border-radius: 5px;
        padding: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        position: relative; /* Added */
    }
        h1 {
            color: #333;
            margin-top: 50px;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #4CAF50;
            color: #fff;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #45a049;
        }
        .logo-text {
            font-family: 'Cooper Black';
            font-size: 36px;
            font-weight: bold;
            color: #4CAF50; /* Green color similar to dairy farm logo */
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 3px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="logo-text">Animal Added Successfully</h2>
    <a href="AddAnimals.jsp">Back</a>
    </div>
</body>
</html>
