<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Record Deleted Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #4CAF50;
            margin-top: 0;
        }
        a {
            color: #4CAF50;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
            transition: color 0.3s;
        }
        a:hover {
            color: #2E8B57;
        }
        .back-btn {
            display: block;
            margin-top: 20px;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #ddd;
            color: #333;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
        }

        /* Style for back button on hover */
        .back-btn:hover {
            background-color: #ccc;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Records Deleted Successfully</h1>
        <div>
        <img alt="Success" src="Images/th (10).jpeg">
        </div>
        <a href="DFEmployee.jsp" class="back-btn">Back Home</a>
    </div>
</body>
</html>
