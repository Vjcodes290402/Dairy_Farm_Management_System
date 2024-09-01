<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Schedule Date</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        h1 {
            color: #4CAF50;
            text-align: center;
        }
        form {
            margin-top: 20px;
        }
        input[type="date"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 10px;
            color: #4CAF50;
            text-decoration: none;
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
<body onload="setCurrentDate()">
<div class="container">
    <h1>Schedule Date</h1>
    <div>
        <img alt="Date" src="Images/th (16).jpeg">
    </div>
    <form action="DFEmployeeServlet" method="post" onsubmit="return validateForm()">
        <input type="hidden" id="mobileNo" name="mobileNo" value="${userMobileNo}">
        <label for="requestDate">Request Date:</label>
        <input type="date" id="requestDate" name="requestDate" readonly>
        <input type="hidden" name="scheduleStatus" value="Scheduled">
        <label for="scheduledDate">Schedule Date:</label>
        <input type="date" id="scheduledDate" name="scheduledDate" required>
        <input type="submit" value="Schedule Date" name="action">
    </form>
    <a href="DFEmployee.jsp" class="back-btn">Back Home</a>
</div>

<script>
function setCurrentDate() {
    var currentDate = new Date().toISOString().split('T')[0]; // Get current date in YYYY-MM-DD format
    document.getElementById('requestDate').value = currentDate;
    document.getElementById('scheduledDate').setAttribute('min', currentDate); // Set min attribute for scheduledDate
}

function validateForm() {
    var requestDate = document.getElementById("requestDate").value;
    var scheduledDate = document.getElementById("scheduledDate").value;

    if (!scheduledDate) {
        alert("Please enter a scheduled date");
        return false;
    }

    if (new Date(scheduledDate) < new Date(requestDate)) {
        alert("Scheduled date cannot be before the request date");
        return false;
    }

    return true;
}
</script>
</body>
</html>
