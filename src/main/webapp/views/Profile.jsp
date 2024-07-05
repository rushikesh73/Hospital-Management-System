<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Management</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .navbar {
            background-color: gray;
            color: #fff;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar a {
            color: #fff;
            text-decoration: none;
            padding: 0 15px;
        }
        .navbar a:hover {
            text-decoration: underline;
        }
        .content {
            padding: 20px;
            text-align: center;
            background: url('images/pexels-totalshape-2377045.jpg') no-repeat center center/cover;
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }
        .content h1 {
            color: #007bff;
            margin-bottom: 20px;
        }
        .hospital-images img {
          
        }
        .footer {
            background-color: gray;
            color: #fff;
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <div class="logo">
            <h2>Hospital Management</h2>
        </div>
        <div class="nav-links">
            <a href="home">Home</a>
            <a href="AddPnt">Add Patient</a>
            <a href="AddPhr">Add Pharma</a>
            <a href="ShowP">Patient Details</a> 
            <a href="AddDr">Add Doctor</a>
            <a href="Doctor">Doctor Details</a>
            <a href="Bill">Bill</a>
            <a href="ExitPnt">Exit Patient</a>
        </div>
    </div>

    <div class="content">
        <h1></h1>
    </div>

    <div class="footer">
        <p>&copy; 2024 Hospital Management. All rights reserved.</p>
    </div>

</body>
</html>
