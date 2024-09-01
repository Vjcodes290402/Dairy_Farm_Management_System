<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User's List</title>
<style>
        body {
            font-family: Calibri, sans-serif; /* Changed font to Calibri */
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        .container {
    position: relative; /* Add this to make the container a reference point for absolute positioning */
    max-width: 1000px;
    margin: 50px auto;
    padding: 40px;
    background-color: #fff;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.image-container {
    text-align: center; /* Center the image horizontally */
    margin-bottom: 20px; /* Add some space between the image and the table */
}

.image-container img {
    max-width: 100%; /* Make the image responsive and fit the container width */
    height: auto; /* Maintain aspect ratio */
}
button[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        button[type="submit"]:hover {
            background-color: #2E8B57;
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
    width: 80%; /* Adjust width as needed */
    margin: 50px auto; /* Center the container horizontally */
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
.search-container {
        text-align: center;
        margin-bottom: 20px;
    }
    .search-input {
        padding: 8px;
        width: 200px;
        margin-right: 20px;
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
    .search-container {
        display: flex;
        justify-content: center; /* Center align the search box horizontally */
        margin-bottom: 20px;
    }
    </style>
</head>
<body>
<div class="container">
<form action="DFEmployeeServlet?action=View More">
    <h2 class="logo-text">User Details</h2>
    <div class="image-container">
    <img alt="record" src="Images/th (6).jpeg">
    </div><br>
    <div class="search-container">
        <input type="number" class="search-input" id="userId" name="userId" placeholder="View more details by User Id...">
        <button class="search-button" value="View More" name="action">View More</button>
    </div><br>
    <table border="1">
        <thead>
            <tr>
                <th>User ID</th>
                <th>Mobile Number</th>
                <th>User Name</th>
                <th>number Of Cows</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${au}">
                <tr>
                    <td>${user.userId}</td>
                    <td>${user.mobileNo}</td>
                    <td>${user.userName}</td>
                    <td>${user.numberOfCows}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="DFEmployee.jsp" class="back-btn">Back</a>
    </form>
    </div>
</body>
</html>
