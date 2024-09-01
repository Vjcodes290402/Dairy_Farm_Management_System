<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Milk Record List</title>
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
        table {
            width: 100%;
            margin: 20px auto;
            border-collapse: collapse;
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            word-wrap: break-word;
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
        .container {
            width: 90%;
            margin: 50px auto;
            padding: 40px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
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
    </style>
</head>
<body>
<div class="container">
    <h2 class="logo-text">Milk Record List</h2>
    <div class="image-container">
        <img alt="record" src="Images/th (6).jpeg">
    </div>
    <table border="1">
        <thead>
            <tr>
                <th>Record ID</th>
                <th>User ID</th>
                <th>User Name</th>
                <th>Mobile Number</th>
                <th>Record Date</th>
                <th>Record Session</th>
                <th>Milk Quantity (Liters)</th>
                <th>Milk Fat Content (%)</th>
                <th>Milk Rate (Rs.)</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="mk" items="${mk}">
                <tr>
                    <td>${mk.recordId}</td>
                    <td>${mk.userId}</td>
                    <td>${mk.userName}</td>
                    <td>${mk.mobileNo}</td>
                    <td><fmt:formatDate value="${mk.recordDate}" pattern="dd-MM-yy"/></td>
                    <td>${mk.recordSession}</td>
                    <td>${mk.milkQuantity} ltr</td>
                    <td>${mk.milkFatContent}%</td>
                    <td>${mk.milkRate}.Rs</td>

                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="DFEmployee.jsp" class="back-btn">Back</a>
</div>
</body>
</html>
