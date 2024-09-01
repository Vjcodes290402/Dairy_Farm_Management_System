<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Your+Font+Name&display=swap" rel="stylesheet">
    <title>Dairy Farm Employee</title>
    <style>
        /* CSS for arranging container with adjusted ratio */
        body, html {
            height: 100%; /* Ensure full height of the viewport */
            margin: 0;
            padding: 0;
        }

        body {
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            background-color: #f2f2f2; /* Background color for the whole page */
        }

        .container {
    width: 90%; /* Adjusted width for better alignment */
    margin: 20px;
    position: relative;
    background-color: #fff; /* Changed background color to white */
    font-family: Arial, sans-serif;
    color: #333;
    border-radius: 10px; /* Rounded corners for the container */
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Shadow effect */
}

.menu-bar {
    display: flex;
    justify-content: space-between;
    align-items: center; /* Vertically align menu items */
    background-color: #4CAF50; /* Changed background color to green */
    color: #fff;
    padding: 20px;
    border-radius: 17px;
}

.menu-item {
    list-style: none;
    margin: 0;
    padding: 0;
}

.menu-item a {
    color: #fff;
    border: none;
    padding: 8px 10px;
    text-align: center;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
    transition: box-shadow 0.3s; /* Smooth transition for the shadow effect */
}

.menu-item a:last-child {
    margin-right: 0;
}

/* Shadow effect on hover */
.menu-item a:hover {
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Shadow effect on hover */
}

.content {
    padding: 20px;
}

/* CSS for paragraph */
p {
    font-size: 18px;
    line-height: 1.6;
}

.profile-btn {
    position: absolute;
    top: 20px;
    right: 20px;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: green;
    color: white;
    border: none;
    padding: 0;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: flex;
    justify-content: center;
    align-items: center;
    text-decoration: none;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* Shadow effect */
}

.profile-btn span {
    font-size: 20px;
}

.profile-btn:hover {
    background-color: green;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3); /* Increased shadow effect on hover */
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
<%
if(session.getAttribute("employeeName") == null)
    response.sendRedirect("DFEmployeeLogin.jsp");
%>
        <div class="container">
        <h2 class="logo-text">Dairy Farm Management System</h2>
            <div class="menu-bar">
                <div class="menu-item">
                    <a href="TakeMilkRecord.jsp">Take Milk Record</a>
                    <a href="DFEmployeeServlet?action=View User">View Users</a>
                    <a href="DFEmployeeServlet?action=View Animal">View Animals</a>
                    <a href="DFEmployeeServlet?action=Milk%20Record%20List">Milk Record List</a>
                    <a href="DFEmployeeServlet?action=Animal CheckUP Request List">View Animal CheckUp Request</a> 
                    <a href="DFEmployeeServlet?action=Message">Message</a>
                    <a href="DFReport.jsp">Dairy Farm Report</a>
                </div>
                <a href="EmployeeProfile.jsp" class="profile-btn"><span>${employeeName.substring(0, 1)}</span></a>
            </div>
            <div class="content">
                <h2>Welcome to the Dairy Farm ${employeeName}</h2>
                <p>
                    As a valued member of our dairy farm team, you play a crucial role in ensuring the smooth operation and success of our farm. 
                    Whether you're involved in animal care, milk production, or administrative tasks, your dedication and hard work contribute to 
                    delivering high-quality dairy products to our customers. We strive to maintain a supportive and collaborative work environment 
                    where each employee can grow and thrive. Together, we work towards the shared goal of providing nutritious and delicious dairy 
                    products while upholding the highest standards of animal welfare and sustain ability. Thank you for being a part of our team!
                </p>
                <!-- Sample images related to dairy farm -->
                <img src="Images/th.jpeg" alt="Dairy Cows">
            </div>
        </div>
    </body>
</html>
