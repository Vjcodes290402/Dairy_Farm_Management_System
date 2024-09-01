<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Take Milk Record</title>
    <style>
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        a {
            display: block;
            margin-top: 20px;
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
    <script>
        // Function to calculate the milk rate based on milk quantity and milk fat content
        function calculateMilkRate() {
            var milkQuantity = parseFloat(document.getElementById('milkQuantity').value);
            var milkFatContent = parseFloat(document.getElementById('milkFatContent').value);
            
            // Example formula: Base price per liter + (fat content * price per fat percentage)
            var basePricePerLiter = 20; // Example base price per liter in Rs
            var pricePerFatPercentage = 5; // Example price per percentage of fat in Rs
            
            var milkRate = (basePricePerLiter + (milkFatContent * pricePerFatPercentage)) * milkQuantity;
            
            document.getElementById('milkRate').value = milkRate.toFixed(2) ; // Display the calculated milk rate in the text box
        }
        
        function setCurrentDate() {
            var currentDate = new Date().toISOString().split('T')[0]; // Get current date in YYYY-MM-DD format
            document.getElementById('recordDate').value = currentDate;
        }
        
        // Call the function when the page loads
        window.onload = setCurrentDate;
        
        // Function to calculate the milk rate when the form is submitted
        function onSubmitForm() {
            calculateMilkRate(); // Calculate milk rate before submitting the form
            return true; // Allow form submission
        }
    </script>
</head>
<body>
<div class="container">
    <form action="DFEmployeeServlet?action=Get User Details" method="post">
        <label for="userId">User ID:</label>
        <input type="text" id="userId" name="userId" required>
        <input type="submit" value="Get User Details" name="action"><br><br>
    </form>
    
    <form action="DFEmployeeServlet?action=Take Milk Record" method="post" onsubmit="return onSubmitForm()">
        <h2 class="logo-text">Take Milk Record</h2>
        <div>
            <img alt="Milk Record" src="Images/th (18).jpeg">
        </div>
        
        <label for="userId">User ID:</label>
        <input type="text" id="userId" name="userId" value="${uId.userId}" required><br>
        
        <label for="userName">User Name:</label>
        <input type="text" id="userName" name="userName" value="${uName.userName}" required><br>
        
        <label for="mobileNo">Mobile Number:</label>
        <input type="text" id="mobileNo" name="mobileNo" value="${uMobileNo.mobileNo}" required><br>
        
        <label for="recordDate">Record Date:</label>
        <input type="date" id="recordDate" name="recordDate" readonly><br><br>
        
        <label for="recordSession">Record Session:</label>
        <select id="recordSession" name="recordSession" required>
            <option value="Morning">Morning</option>
            <option value="Evening">Evening</option>
        </select><br>
         
        <label for="milkQuantity">Milk Quantity (liters):</label>
        <input type="number" id="milkQuantity" name="milkQuantity" min="1" max="50" step="0.01" oninput="calculateMilkRate()" required><br>
        
       <label for="milkFatContent">Milk Fat Content (%):</label>
        <input type="number" id="milkFatContent" name="milkFatContent" min="1" max="5" step="0.01" oninput="calculateMilkRate()" required><br>
        
        <label for="milkRate">Milk Rate (Rs):</label>
        <input type="text" id="milkRate" name="milkRate" readonly><br> <!-- Text box to display the calculated milk rate -->
        
        <input type="submit" value="Take Milk Record" name="action"><br><br>
        
        <a href="DFEmployee.jsp" class="back-btn">Back</a>
    </form>
</div>
</body>
</html>
