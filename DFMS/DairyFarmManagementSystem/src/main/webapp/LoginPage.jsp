<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            width: 90%;
            max-width: 500px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .logo-text {
            font-family: 'Cooper Black';
            font-size: 36px;
            font-weight: bold;
            color: #4CAF50;
            text-transform: uppercase;
            letter-spacing: 3px;
            margin-bottom: 20px;
        }

        .form-group {
            width: 100%;
            margin-bottom: 15px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .form-group label {
            margin-bottom: 5px;
            font-size: 18px;
        }

        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 18px;
        }

        .button:hover {
            background-color: #45a049;
        }
        .back-link {
            text-align: center; /* Center align the back link */
            margin-top: 20px;
        }
        .back-link a {
            text-decoration: none;
            color: #4CAF50;
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
    <div class="login-container">
        <div class="header">
            <h1 class="logo-text">Login</h1>
        </div>
        <div class="form-group">
            <label for="loginSelect">Select Login Type:</label>
            <select id="loginSelect">
                <option value="DFEmployeeLogin.jsp">Employee Login</option>
                <option value="DFUserLogin.jsp">DF User Login</option>
            </select>
        </div>
        <button class="button" onclick="navigateToLogin()">Login</button>
        <div class="back-link">
            <a href="DairyFarmManagementSystem.html" class="back-btn">Back</a>
        </div>
    </div>


    <script>
        function navigateToLogin() {
            var loginSelect = document.getElementById("loginSelect");
            var selectedPage = loginSelect.value;
            window.location.href = selectedPage;
        }
    </script>
</body>
</html>
