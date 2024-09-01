<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Milk Record Report</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 20px;
    }
    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }
    h1 {
        text-align: center;
        color: #4CAF50;
    }
    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }
    select,
    input[type="text"],
    input[type="submit"] {
        width: calc(50% - 20px);
        padding: 8px;
        margin: 5px 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 12px;
        text-align: left;
    }
    th {
        background-color: #4CAF50;
        color: white;
    }
    tbody tr:nth-child(even) {
        background-color: #f9f9f9;
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
    <h2 class="logo-text">Milk Record Report</h2>
    <form action="DFEmployeeServlet?action=Get Report" method="get">
        <label for="month">Select Month:</label>
        <select id="month" name="month" required>
            <option value="01">January</option>
            <option value="02">February</option>
            <option value="03">March</option>
            <option value="04">April</option>
            <option value="05">May</option>
            <option value="06">June</option>
            <option value="07">July</option>
            <option value="08">August</option>
            <option value="09">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
        </select>
        <input type="submit" value="Get Report" name="action">
    </form>

    <table>
        <thead>
            <tr>
                <th>Record Date</th>
                <th>Total Milk Quantity</th>
                <th>Total Milk Rate</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="reportList" items="${report}">
                <tr>
                    <td><c:out value="${reportList.recordDate}"/></td>
                    <td><c:out value="${reportList.milkQuantity}"/></td>
                    <td><c:out value="${reportList.milkRate}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="DFEmployee.jsp" class="back-btn">Back</a>
</div>
</body>
</html>
