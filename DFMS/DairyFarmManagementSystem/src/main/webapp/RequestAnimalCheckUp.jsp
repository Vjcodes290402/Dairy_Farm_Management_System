<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request Animal Check-Up</title>
    <style>
        body {
            font-family: Calibri, sans-serif; /* Changed font to Calibri */
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        .container {
            margin: auto;
            width: 50%;
            padding: 40px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #4CAF50;
            text-align: center;
            margin-top: 0;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            color: #333;
        }
        .form-group input[type="text"],
        .form-group select {
            width: calc(100% - 16px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-family: Calibri, sans-serif; /* Changed font to Calibri */
        }
        .form-group select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background: url('data:image/svg+xml;utf8,<svg fill="#555" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M10 13L6 9h8l-4 4z"/></svg>') no-repeat;
            background-position: right 8px center;
            background-size: 16px;
            padding-right: 30px;
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
        label {
            display: block;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="logo-text">Request Animal Check-Up</h2>
        <form action="DFUserServlet?action=Request CheckUp" method="post" onsubmit="return validateForm()">
            
            <div class="form-group">
                <label for="userId">User Id:</label>
                <input type="text" id="userId" name="userId" value="${userId}" required>
            </div>
            
            <div class="form-group">
                <label for="userName">User Name:</label>
                <input type="text" id="userName" name="userName" value="${userName}" required>
            </div>
            <div class="form-group">
                <label for="mobileNo">Mobile Number:</label>
                <input type="text" id="mobileNo" name="mobileNo" value="${userMobileNo}" required>
            </div>
            <div class="form-group">
                <label for="cowTagNo">Cow Tag Number:</label>
                <input type="text" id="cowTagNo" name="cowTagNo" required>
            </div>
            <div class="form-group">
                <label for="healthCondition">Health Condition:</label>
                <select id="healthCondition" name="healthCondition" required>
                    <option value="">Select</option>
                    <option value="Good">Good</option>
                    <option value="Fair">Fair</option>
                    <option value="Poor">Poor</option>
                </select>
            </div>
            <div class="form-group">
                <label for="symptoms">Symptoms:</label>
                <select id="symptoms" name="symptoms" required>
                    <option value="">Select</option>
                    <option value="Coughing">Coughing</option>
                    <option value="Lameness">Lameness</option>
                    <option value="Diarrhea">Diarrhea</option>
                    <!-- Add more options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="ongoingTreatment">Ongoing Treatment:</label>
                <select id="ongoingTreatment" name="ongoingTreatment" required>
                    <option value="">Select</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            <div class="form-group">
                <label for="lastVaccinationDate">Last Vaccination Date (dd-MM-yyyy):</label>
                <input type="text" id="lastVaccinationDate" name="lastVaccinationDate" placeholder="dd-MM-yyyy" required>
                <span id="lastVaccinationDateError" class="error"></span>
            </div>
            <div class="form-group">
                <label for="requestDate"></label>
                <input type="hidden" id="requestDate" name="requestDate">
            </div>
            <div class="form-group">
                <label for="preference">User Preference:</label>
                <select id="preference" name="preference" required>
                <option value="">Select</option>
                    <option value="Emergency">Emergency</option>
                    <option value="No">No</option>
                </select>
            </div>
            <div>
                <img alt="Check Up" src="Images/th (15).jpeg">
            </div>
            <button type="submit" value="Request CheckUp" name="action">Request Check-Up</button>
        </form>
        <a href="DFUser.jsp" class="back-btn">Back Home</a>
    </div>

    <script>
        // Function to set current date
        function setCurrentDate() {
            var currentDate = new Date().toISOString().split('T')[0]; // Get current date in YYYY-MM-DD format
            document.getElementById('requestDate').value = currentDate;
        }
        
        // Function to validate form
        function validateForm() {
            var cowTagNo = document.getElementById("cowTagNo").value;
            var healthCondition = document.getElementById("healthCondition").value;
            var symptoms = document.getElementById("symptoms").value;
            var ongoingTreatment = document.getElementById("ongoingTreatment").value;
            var lastVaccinationDate = document.getElementById("lastVaccinationDate").value;

            var dateRegex = /^\d{2}-\d{2}-\d{4}$/;

            if (cowTagNo.trim() === "") {
                alert("Please enter the Cow Tag Number.");
                return false;
            }
            if (healthCondition === "") {
                alert("Please select the Health Condition.");
                return false;
            }
            if (symptoms === "") {
                alert("Please select the Symptoms.");
                return false;
            }
            if (ongoingTreatment === "") {
                alert("Please select if there is Ongoing Treatment.");
                return false;
            }
            if (!dateRegex.test(lastVaccinationDate)) {
                alert("Please enter the Last Vaccination Date in the format dd-mm-yyyy.");
                return false;
            }
            return true;
        }

        window.onload = function() {
            setCurrentDate();
        };
    </script>
</body>
</html>