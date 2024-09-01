<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Milk Record Notification</title>
    <style>
        body {
            font-family: Calibri, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #4CAF50;
            text-align: center;
            margin-top: 0;
        }
        p {
            margin: 10px 0;
            font-size: 16px;
        }
        .record-info {
            margin-bottom: 20px;
        }
        .record-info label {
            font-weight: bold;
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
    <div class="container">
    <h1 class="logo-text">Message Box</h1>
    <div>
        <img alt="Message" src="Images/th (13).jpeg">
        <img alt="Message" src="Images/th (14).jpeg">
        </div>
        <div class="container">
        <p>Dear ${userName}, ${mobileNo}</p>
        <p>You're added to our dairy farm successfully.</p>
        <p><label>Your User Id: </label> ${df.userId}</p>
        </div>
    <c:forEach var="milkRecord" items="${mk}">
        <div class="container">
            <p>Dear ${userName}, ${userMobileNo} todays milk record details below
            <p><label>Record Date: </label> <c:out value="${milkRecord.recordDate}"/></p>
            <p><label>Record Session: </label> ${milkRecord.recordSession}</p>
            <p><label>Milk Quantity(ltr): </label> ${milkRecord.milkQuantity}</p>
            <p><label>Milk Fat Content(%): </label> ${milkRecord.milkFatContent}</p>
            <p><label>Milk Rate(Rs): </label> ${milkRecord.milkRate}</p>
        </div>
        </c:forEach>
        <c:forEach var="requestList" items="${ac}">
        <div class="container">
        <p>Dear ${userName}, ${userMobileNo} the check Up date as successfully scheduled below the details 
        <p><label>Cow Tag Number: </label>${requestList.cowTagNo}</p>
        <p><label>Scheduled Date: </label>${requestList.scheduledDate}</p>
        <p><label>Your Preference: </label>${requestList.preference}</p>
        </div>
        </c:forEach>
         <c:forEach var="animal" items="${anl}">
         <div class="container">
                    <p>Dear ${userName}, ${userMobileNo} your cow added successfully, details below</p>
                    <p><label>Animal Id: </label>${animal.animalId}</p>
                    <p><label>Animal Tag No: </label>${animal.animalTagNo}</p>
                    <p><label>Animal Type: </label>${animal.animalType}</p>
                    <p><label>Animal DOB: </label>${animal.animalDob}</p>
                    <p><label>Animal Age: </label>${animal.animalAge}</p>
                    </div>
            </c:forEach>
        <a href="DFUser.jsp" class="back-btn">Back Home</a>
    </div>
</body>
</html>
