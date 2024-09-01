<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }
    form {
        max-width: 400px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    label {
        font-weight: bold;
    }
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    input[type="submit"]:hover {
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
</style>
</head>
<body>
<form action="DFEmployeeServlet">
<input type="hidden" id="employeeName" name="employeeName" value="${employeeName}"><br><br>
<label for="passWord">Set New Password</label>
<input type="password" id="passWord" name="passWord" placeholder="New Password" required><br>
<label for="passWord">Confirm Password</label>
<input type="password" id="Confirm passWord" name="Confirm passWord" placeholder=" Confirm Password" required><br>
<input type="submit" value="Update Password" name="action"><br>
<a href="EmployeeProfile.jsp" class="back-btn">Back</a>
</form>
</body>
</html>