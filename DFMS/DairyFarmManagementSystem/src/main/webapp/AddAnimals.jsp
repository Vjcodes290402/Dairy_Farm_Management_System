<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <title>Add Animals</title>
    <style>
        /* Style for form container */
        .form-container {
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        /* Style for form labels */
        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        /* Style for form inputs */
        input[type="text"],
        input[type="date"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        /* Style for submit button */
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Style for submit button on hover */
        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Style for back button */
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
</head>
<body>
    <div class="form-container">
        <h1 class="logo-text">Add Animals</h1>
        
        <form action="DFUserServlet?action=Add Animal" method="POST" onsubmit="return validateForm()">
            
            <label for="userId">User ID:</label>
            <input type="text" id="userId" name="userId" value="${userId.userId}"><br>
            
            <label for="userId">User Mobile No.:</label>
            <input type="number" id="mobileNo" name="mobileNo" value="${userMobileNo}"><br>
            
            <label for="animalType">Animal Type:</label>
            <select id="animalType" name="animalType" required>
                <option value="">Select Cow Type</option>
                <option value="Holstein">Holstein</option>
                <option value="Jersey">Jersey</option>
                <option value="Angus">Angus</option>
                <!-- Add more cow types as needed -->
            </select>
            
            <label for="animalDob">Animal Date of Birth:</label>
            <input type="date" id="animalDob" name="animalDob" onchange="calculateAge()" required>
            
            <label for="animalAge">Animal Age:</label>
            <input type="text" id="animalAge" name="animalAge" readonly>
            <div>
            <img alt="Cow" src="Images/th (5).jpeg">
            </div>
            <input type="submit" value="Add Animal">
        </form>
        <a href="DFUser.jsp" class="back-btn">Back</a>
    </div>

    <script>
        function calculateAge() {
            var dob = document.getElementById("animalDob").value;
            var dobDate = new Date(dob);
            var today = new Date();
            var ageYear = today.getFullYear() - dobDate.getFullYear();
            var ageMonth = today.getMonth() - dobDate.getMonth();
            if (ageMonth < 0 || (ageMonth === 0 && today.getDate() < dobDate.getDate())) {
                ageYear--;
                ageMonth += 12;
            }
            var ageString = ageYear + " years " + ageMonth + " months";
            document.getElementById("animalAge").value = ageString;
        }

        function validateForm() {
            var userId = document.getElementById("userId").value;
            var animalId = document.getElementById("animalId").value;
            var animalTagNo = document.getElementById("animalTagNo").value;
            var animalType = document.getElementById("animalType").value;
            var animalDob = document.getElementById("animalDob").value;
            
            if (userId === "" || animalId === "" || animalTagNo === "" || animalType === "" || animalDob === "") {
                alert("All fields are required!");
                return false;
            }

            return true;
        }
    </script>
</body>
</html>
