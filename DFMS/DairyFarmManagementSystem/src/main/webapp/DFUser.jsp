<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Page</title>
    <style>
        body {
            font-family: Calibri, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        .container {
            max-height: 500px;
            max-width: 1000px;
            margin: 0 auto;
            position: relative;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding-top: 4px; /* Adjusted to accommodate profile button */
            display: flex; /* Added */
        }

        .sidebar {
            width: 160px; /* Adjusted width */
            background-color: #4CAF50;
            color: #fff;
            padding: 40px;
            border-radius: 10px 0 0 10px; /* Rounded left corners */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* Shadow effect */
        }

        .sidebar h2 {
            margin-top: 0;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .sidebar ul li {
            margin-bottom: 15px;
        }

        .sidebar ul li a,
        .sidebar ul li input[type="submit"] {
            display: block;
            padding: 10px 20px;
            text-decoration: none;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            border-radius: 5px; /* Added rounded corners */
        }

        .sidebar ul li a:hover,
        .sidebar ul li input[type="submit"]:hover {
            background-color: #2E8B57;
        }

        .profile-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: #4CAF50;
            color: #fff;
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
            background-color: #2E8B57;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7); /* Increased shadow effect on hover */
        }

        .content {
            flex: 1; /* Added */
            padding: 20px;
        }

        .content h1 {
            color: #4CAF50;
        }

        .content p {
            line-height: 1.6;
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
if(session.getAttribute("userName") == null)
    response.sendRedirect("DFUserLogin.jsp");
%>
<form action="DFUserServlet">
    <input type="hidden" id="userId" name="userId" value="${userId}"><br><br>
    <input type="hidden" id="mobileNo" name="mobileNo" value="${userMobileNo}"><br><br>
    <input type="hidden" id="requestDate" name="requestDate" value="${requestDate}"><br><br>
    <div class="container">
        <div class="sidebar">
            <h2>Menu</h2>
            <ul>
                <li><a href="#" onclick="showHomeContent()">Home</a></li>
                <li><a href="AddAnimals.jsp">Add Animal</a></li>
                <li><a href="RequestAnimalCheckUp.jsp">Schedule Cow Check Up</a></li>
                <li><input type="submit" value="Message" name="action"/></li>
            </ul>
        </div>
        <div class="content" id="homeContent">
        <h2 class="logo-text">Dairy Farm</h2>
            <p>This is your personalized user page. You can access various features and manage your account from here.</p>
            <p>Explore the menu on the left to navigate to different sections.</p>
        </div>
        <a href="UserProfile.jsp" class="profile-btn"><span>${userName.substring(0, 1)}</span></a> 
        <img alt="Dairy Cow" src="Images/th (2).jpeg">
    </div>
</form>

<script>
    function showHomeContent() {
        var homeContent = document.getElementById("homeContent");
        homeContent.innerHTML = "<h1>Welcome to Your Dashboard</h1><p>This is your personalized user page. You can access various features and manage your account from here.</p><p>Explore the menu on the left to navigate to different sections.</p>";
    }
</script>
</body>
</html>
