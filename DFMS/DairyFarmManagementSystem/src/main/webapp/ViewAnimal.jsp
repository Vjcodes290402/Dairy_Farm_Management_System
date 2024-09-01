<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Animal's List</title>
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
        padding: 20px;
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
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        border: 1px solid #ddd;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #4CAF50;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ddd;
    }
    h1 {
        color: #4CAF50;
        text-align: center;
        margin-top: 0;
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
    .back-btn:hover {
        background-color: #ccc;
    }
    .search-container {
        text-align: center;
        margin-bottom: 20px;
    }
    .search-input {
        padding: 8px;
        width: 200px;
        margin-right: 10px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    .search-button {
        padding: 8px 16px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    .search-button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<div class="container">
    <h2 class="logo-text">Animal Details</h2>
    <div class="image-container">
        <img alt="record" src="Images/th (6).jpeg">
    </div>
    <div class="search-container">
    <form action="DFEmployeeServlet?action=Search">
        <input type="number" class="search-input" id="userId" name="userId" placeholder="Search for animals by User Id...">
        <button class="search-button" value="Search" name="action">Search</button>
    </form>
    </div>
    <table border="1">
        <thead>
            <tr>
                <th>User ID</th>
                <th>Mobile Number</th>
                <th>Animal Id</th>
                <th>Animal Tag Number</th>
                <th>Animal Type</th>
                <th>Date Of Birth</th>
                <th>Animal Age</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="animal" items="${an}">
                <tr>
                    <td>${animal.userId}</td>
                    <td>${animal.mobileNo}</td>
                    <td>${animal.animalId}</td>
                    <td>${animal.animalTagNo}</td>
                    <td>${animal.animalType}</td>
                    <td>${animal.animalDob}</td>
                    <td>${animal.animalAge}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="DFEmployee.jsp" class="back-btn">Back</a>
</div>
</body>
</html>
