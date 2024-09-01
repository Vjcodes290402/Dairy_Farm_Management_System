<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard</title>
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
        position: relative;
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
</style>
</head>
<body>
<%
if(session.getAttribute("userName") == null)
    response.sendRedirect("DFUserLogin.jsp");
%>
<div class="container">
    <div class="profile-circle">${userName.substring(0, 1)}</div>
    <div>
    <img alt="Profile" src="Images/th (20).jpeg">
    </div>
    <h1>Welcome, ${userName}</h1>
    <div class="btn-container">
        <form action="DFUserServlet">
            <a href="UpdateUserPassword.jsp" class="btn">Edit Profile</a>
            <button type="submit" class="btn" name="action" value="Logout">Logout</button>
        </form>
    </div>
    <a href="DFUser.jsp" class="back-btn">Back</a>
</div>
</body>
</html>
