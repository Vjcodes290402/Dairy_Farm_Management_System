<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Record Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        p {
            text-align: center;
            color: #666;
            margin-bottom: 20px;
        }
        a {
            display: block;
            text-align: center;
            color: #4CAF50;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        a:hover {
            color: #45a049;
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
    <h2>Record Confirmation</h2>
    <p>Milk record has been successfully recorded.</p>
    <div>
    <img alt="Record" src="Images/th (1).jpeg">
    </div>
    <a href="TakeMilkRecord.jsp" class="back-btn">Back</a>
</div>
</body>
</html>
