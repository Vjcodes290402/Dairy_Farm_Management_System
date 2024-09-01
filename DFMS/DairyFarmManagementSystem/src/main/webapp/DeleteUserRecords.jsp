<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Records</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background-color: #fff;
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .form-container h1 {
            margin-bottom: 20px;
        }
        .form-container input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-container input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .form-container input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .btn-container {
        margin-top: 20px;
    }
    .btn {
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        background-color: #4CAF50;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
        text-decoration: none;
        margin-right: 10px;
    }
    .btn:hover {
        background-color: #2E8B57;
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
    <div class="form-container">
        <h1 class="logo-text">Delete User Records</h1>
        <form action="DFEmployeeServlet?action=Delete Records" method="post">
            <input type="number" id="userId" name="userId" placeholder="Enter User ID" required>
            <button type="submit" class="btn" value="Delete Records" name="action">Delete Records</button>
        </form>
        <a href="EmployeeProfile.jsp" class="back-btn">Back</a>
    </div>
</body>
</html>
