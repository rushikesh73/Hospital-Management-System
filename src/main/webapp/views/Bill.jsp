<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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
        .form-container {
            max-width: 700px;
            margin: 20px auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container h1 {
            color: red;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input[type="text"],
        .form-group input[type="date"],
        .form-group button {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
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
        .bill-container {
            max-width: 700px;
            margin: 20px auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: left;
        }
        .bill-container h1 {
            color: red;
            margin-bottom: 20px;
        }
        .bill-table {
            width: 100%;
            border-collapse: collapse;
        }
        .bill-table th, .bill-table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        .bill-table th {
            background-color: #f4f4f4;
        }
        .bill-table td input {
            width: 100%;
            padding: 5px;
            border: none;
            outline: none;
        }
        .bill-table tr:last-child td {
            text-align: right;
            font-weight: bold;
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
            <a href="Doctor">Doctors Details</a>
            <a href="Bill">Bill</a>
            <a href="ExitPnt">Exit Patient</a>
        </div>
    </div>
    
    <div class="content">
        <div class="form-container">
            <h1>Generate Bill</h1>
            <form action="GenerateBill" method="post">
                <div class="form-group">
                    <label for="name">Enter Patient Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="bill-container">
                    <h1>Bill Details</h1>
                    <table class="bill-table">
                        <thead>
                            <tr>
                                <th>Sr. No</th>
                                <th>Bill Item</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><input type="text" name="item1" required></td>
                                <td><input type="text" name="price1" required></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><input type="text" name="item2" required></td>
                                <td><input type="text" name="price2" required></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><input type="text" name="item3" required></td>
                                <td><input type="text" name="price3" required></td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td><input type="text" name="item4" required></td>
                                <td><input type="text" name="price4" required></td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td><input type="text" name="item5" required></td>
                                <td><input type="text" name="price5" required></td>
                            </tr>
                            <tr>
                                
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="form-group">
                    <button type="submit">Generate Total</button>
                </div>
            </form>
        </div>
    </div>

</body>
</html>
