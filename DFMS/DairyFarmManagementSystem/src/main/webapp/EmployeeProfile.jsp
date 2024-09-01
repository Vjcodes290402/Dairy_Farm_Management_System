<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center; /* Center-align container content */
    }
    h1 {
        color: #4CAF50;
    }
    .profile-circle {
        width: 80px;
        height: 80px;
        border-radius: 50%;
        background-color: #4CAF50;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 24px;
        color: #fff;
        margin: 0 auto 20px; /* Center horizontally and add margin at the bottom */
    }
    .btn-container {
        margin-top: 20px;
    }
    .btn {
        display: block;
        padding: 10px 20px;
        margin: 10px auto;
        border: none;
        border-radius: 4px;
        background-color: #4CAF50;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
        text-decoration: none;
        width: 200px;
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
    img {
        margin-bottom: 20px;
        border-radius: 8px;
        max-width: 100%;
        height: auto;
    }
</style>
</head>
<body>
<div class="container">
    <div class="profile-circle">${employeeName.substring(0, 1)}</div>
    <h1 class="logo-text">Welcome, ${employeeName}</h1>
    <div>
        <img alt="Profile" src="Images/th (20).jpeg">
    </div>
    <div class="btn-container">
        <a href="UpdateEmployeePassword.jsp" class="btn">Edit Profile</a>
        <a href="DeleteUserRecords.jsp" class="btn">Delete User Records</a>
        <form action="DFEmployeeServlet" method="post" style="display:inline;">
            <button type="submit" class="btn" name="action" value="Logout">Logout</button>
        </form>
    </div>
    <a href="DFEmployee.jsp" class="back-btn">Back</a>
</div>
</body>
</html>
