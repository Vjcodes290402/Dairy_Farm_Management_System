<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Animal CheckUp Request List</title>
    <style>
        body {
            font-family: Calibri, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        .container {
            max-width: 1000px;
            margin: 20px auto;
            padding: 50px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
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
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            width: auto;
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
            color: #4CAF50;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 3px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="logo-text">Animal CheckUp Request List</h2><br><br>
    <div>
        <img alt="Image of Animal Check Up" src="Images/th (21).jpeg">
    </div>
    <table>
        <thead>
            <tr>
                <th>Request ID</th>
                <th>User Id</th>
                <th>User Name</th>
                <th>Mobile Number</th>
                <th>Cow Tag Number</th>
                <th>Health Condition</th>
                <th>Symptoms</th>
                <th>Ongoing Treatment</th>
                <th>Last Vaccination Date</th>
                <th>Scheduled Date</th>
                <th>Request Date</th>
                <th>User Preference</th>
                <th>Schedule Date</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="ac" items="${acList}">
                <tr>
                    <td>${ac.requestId}</td>
                    <td>${ac.userId}</td>
                    <td><c:out value="${ac.userName}"/></td>
                    <td>${ac.mobileNo}</td>
                    <td>${ac.cowTagNo}</td>
                    <td>${ac.healthCondition}</td>
                    <td>${ac.symptoms}</td>
                    <td>${ac.ongoingTreatment}</td>
                    <td>${ac.lastVaccinationDate}</td>
                    <td>${ac.scheduledDate}</td>
                    <td>${ac.requestDate}</td>
                    <td>${ac.preference}</td>
                    <td>
                        <c:choose>
                            <c:when test="${ac.scheduleStatus == 'Scheduled'}">
                                Scheduled
                            </c:when>
                            <c:otherwise>
                                <a href="ScheduleDate.jsp">Schedule Date</a>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table><br><br>
    <a href="DFEmployee.jsp" class="back-btn">Back</a>
</div>
</body>
</html>
