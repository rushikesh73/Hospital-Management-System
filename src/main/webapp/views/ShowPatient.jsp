<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
            position: relative;
        }
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.3);
            z-index: 1;
        }
        .container {
            position: relative;
            z-index: 2;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 90%;
            text-align: center;
        }
        h1 {
            color: #007bff;
            margin-bottom: 20px;
            font-size: 28px;
        }
        .data {
            font-size: 18px;
            line-height: 1.8;
            margin-bottom: 15px;
            color: #333;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid #e0e0e0;
        }
        .data span {
            font-weight: bold;
            color: #555;
        }
        .btn {
            display: inline-block;
            padding: 12px 25px;
            font-size: 16px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .data-label {
            font-weight: bold;
            color: #007bff;
            width: 50%;
            text-align: right;
            padding-right: 10px;
        }
        .data-value {
            width: 50%;
            text-align: left;
            padding-left: 10px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="container">
        <h1>Patient Details</h1>
        <div class="data">
            <div class="data-label">Patient Name:</div>
            <div class="data-value">${key.name}</div>
        </div>
        <div class="data">
            <div class="data-label">Patient Age:</div>
            <div class="data-value">${key.age}</div>
        </div>
        <div class="data">
            <div class="data-label">Patient Mobile No:</div>
            <div class="data-value">${key.mobno}</div>
        </div>
        <div class="data">
            <div class="data-label">Patient Disease:</div>
            <div class="data-value">${key.disease}</div>
        </div>
        <div class="data">
            <div class="data-label">Patient Address:</div>
            <div class="data-value">${key.location}</div>
        </div>
        <div class="data">
            <div class="data-label">Entry Date:</div>
            <div class="data-value">${key.entryDate}</div>
        </div>
        <div class="data">
            <div class="data-label">Exit Date:</div>
            <div class="data-value">${key.exitDate}</div>
        </div>
        <div class="data">
            <div class="data-label">Doctor Name:</div>
            <div class="data-value">${key.doctor}</div>
        </div>
        <div class="data">
            <div class="data-label">Description:</div>
            <div class="data-value">${key.info}</div>
        </div>
        <a href="/home" class="btn">Back To Home</a>
        

    </div>
</body>
</html>
