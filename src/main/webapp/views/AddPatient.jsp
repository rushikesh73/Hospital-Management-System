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
            background-color: #f4f4f4;
        }
        .navbar {
            background-color: #007bff;
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
            transition: color 0.3s;
        }
        .navbar a:hover {
            color: #ffdd57;
        }
        .content {
            padding: 20px;
            text-align: center;
        }
        .content h1 {
            color: #007bff;
            margin-bottom: 20px;
        }
        .form-group {
            max-width: 600px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group input[type="text"],
        .form-group input[type="number"],
        .form-group button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .form-group button {
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
        .form-group input:focus {
            border-color: #007bff;
            outline: none;
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
            <a href="AddPhr">Add Pharma </a>
            <a href="ShowP">Patient Details</a> 
            <a href="AddDr">Add Doctor</a>
            <a href="Doctor"> Doctors Details</a>
            <a href="Bill">Bill</a>
            <a href="ExitPnt">Exit Patient</a>
        </div>
    </div>
    
    <div class="content">
        <h1>Add New Patient</h1>
        <form action="/add" method="post" class="form-group">
     
            
            <input type="text" name="name" placeholder="Patient Full Name" required>
            <input type="number" name="age" placeholder="Patient Age" required>
            <input type="text" name="mobno" placeholder="Mobile No"required>
            <input type="text" name="disease" placeholder="Disease" required>
            <input type="text" name="location" placeholder="Patient Address" required>
            <input type="text" name="entryDate" placeholder="Entry Date" required>
            <input type="text" name="doctor" placeholder="Doctor Name" required>
            <input type="text" name="info" placeholder="Description" required>
            
            <button type="submit">Add Patient</button>
            
            

        </form>
    </div>

</body>
</html>
