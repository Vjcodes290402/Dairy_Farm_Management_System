<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Milk Record List</title>
    <style>
        body {
            font-family: Calibri, sans-serif; /* Changed font to Calibri */
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
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
            padding: 8px;
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
        .container {
            max-width: 800px;
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
            color: #4CAF50; /* Green color similar to dairy farm logo */
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
    <h1 class="logo-text">Dear ${userName}, Today's Milk Record</h1><br>
    <div>
    <img alt="Record" src="Images/th (17).jpeg">
    </div>
    <table border=1>
        <thead>
            <tr>
                <th>Record Date</th>
                <th>Record Session</th>
                <th>Milk Quantity</th>
                <th>Milk Fat Content</th>
                <th>Milk Rate</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="milkRecord" items="${mk}">
                <tr>
                    <td><c:out value="${milkRecord.recordDate}"/></td>
                    <td><c:out value="${milkRecord.recordSession}"/></td>
                    <td><c:out value="${milkRecord.milkQuantity}"/></td>
                    <td><c:out value="${milkRecord.milkFatContent}"/></td>
                    <td><c:out value="${milkRecord.milkRate}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="DFUser.jsp" class="back-btn">Back</a>
</div>

</body>
</html>
