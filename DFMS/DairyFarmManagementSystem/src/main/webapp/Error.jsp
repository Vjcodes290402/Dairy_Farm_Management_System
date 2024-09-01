<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 400px;
        margin: 50px auto;
        background-color: #fff;
        border-radius: 5px;
        padding: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        position: relative; /* Added */
    }
    h1 {
        text-align: center;
        color: #333;
    }
    p {
        text-align: center;
        color: #666;
    }
    button {
        display: block;
        margin: 20px auto 0;
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    button:hover {
        background-color: #45a049;
    }
    .error-image {
        display: block;
        margin: 20px auto; /* Adjusted */
        max-width: 100%; /* Added */
        height: auto; /* Added */
    }
</style>
</head>
<body>
<div class="container">
    <h1>Oops! Something went wrong.</h1>
    <p>Sorry, your entry is invalid. Please try again.</p>
    <div>
        <img class="error-image" alt="Error" src="Images/th (11).jpeg">
    </div>
    <button onclick="goBack()">Go Back</button>
</div>

<script>
    // JavaScript function to go back to the previous page
    function goBack() {
        window.history.back();
    }
</script>

</body>
</html>
