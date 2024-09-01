<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Box</title>
<style>
    body {
        font-family: Calibri, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f2f2f2;
    }
    .container {
        position: relative;
        max-width: 1000px;
        margin: 50px auto;
        padding: 40px;
        background-color: #fff;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    .image-container {
        text-align: center;
        margin-bottom: 20px;
    }
    .image-container img {
        max-width: 100%;
        height: auto;
    }
    h2 {
        color: #4CAF50;
        text-align: center;
        margin-top: 20px;
    }
    .message {
        margin: 20px auto;
        padding: 15px;
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    .message h3 {
        color: #4CAF50;
        margin: 0 0 10px 0;
    }
    .message p {
        margin: 5px 0;
    }
    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        text-decoration: none;
        color: #4CAF50;
        transition: color 0.3s ease;
    }
    a:hover {
        color: #2E8B57;
    }
    .logo-text {
        font-family: 'Cooper Black';
        font-size: 36px;
        font-weight: bold;
        color: #4CAF50;
        text-align: center;
        text-transform: uppercase;
        letter-spacing: 3px;
        margin-bottom: 20px;
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
    <h2 class="logo-text">Update Box</h2>
    <div class="image-container">
        <img alt="record" src="Images/th (6).jpeg">
    </div>
    <div class="message">
        Seeing the message, new users and animals added into the dairy farm.
    </div>
    <c:forEach var="user" items="${df}">
        <div class="message">
            <h3>User Id: ${user.userId}</h3>
            <p><strong>User Name:</strong> ${user.userName}</p>
            <p><strong>Mobile Number:</strong> ${user.mobileNo}</p>
            <p><strong>User Address:</strong> ${user.userAddress}</p>
            <p><strong>Gender:</strong> ${user.gender}</p>
            <p><strong>User DOB:</strong> ${user.userDob}</p>
            <p><strong>Age:</strong> ${user.age}</p>
            <p><strong>Number Of Cows:</strong> ${user.numberOfCows}</p>
            <p><strong>Password:</strong> ${user.passWord}</p>
        </div>
    </c:forEach>
    <c:forEach var="animal" items="${an}">
    <div class="message">
                    <h3>User Id: ${animal.userId}</h3>
                    <p><strong>Mobile Number: </strong>${animal.mobileNo}</p>
                    <p><strong>Animal Id: </strong>${animal.animalId}</p>
                    <p><strong>Animal Tag No: </strong>${animal.animalTagNo}</p>
                    <p><strong>Animal Type: </strong>${animal.animalType}</p>
                    <p><strong>Animal DOB: </strong>${animal.animalDob}</p>
                    <p><strong>Animal Age: </strong>${animal.animalAge}</p>
    </div>
    </c:forEach>
    <a href="DFEmployee.jsp" class="back-btn">Back</a>	
</div>
</body>
</html>
