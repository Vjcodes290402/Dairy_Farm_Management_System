<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dairy Farm User Login Page </title>
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
    h1 {
        text-align: center;
        color: #333;
    }
    form {
        margin-top: 20px;
    }
    label {
        display: block;
        margin-bottom: 5px;
        color: #333;
    }
    input[type="text"],
    input[type="number"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        margin-top: 10px;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    .go-back-link {
        text-align: center;
        margin-top: 10px;
    }
    .go-back-link a {
        text-decoration: none;
        color: #333;
        transition: color 0.3s ease;
    }
    .go-back-link a:hover {
        color: #666;
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
    <h1 class="logo-text">Dairy Farm User Login Page</h1>
    <form action="DFUserServlet" method="post"> 
        <label for="userName">User Name</label>
        <input type="text" id="userName" name="userName" placeholder="User Name" required><br>
        <label for="userMobileNo">Mobile Number</label>
        <input type="number" id="userMobileNo" name="userMobileNo" placeholder="Mobile Number" required><br>
        <label for="passWord">Password</label>
        <input type="password" id="passWord" name="passWord" placeholder="Password" required><br>
        <div>
        <img alt="Dairy Cow" src="Images/th (4).jpeg">
        </div>
        <input type="submit" value="Login" name="action">
        <div class="go-back-link">
            <a href="DFUserSignUp.html" class="btn btn-primary">Sign Up</a>
        </div>
    </form>
</div>
</body>
</html>