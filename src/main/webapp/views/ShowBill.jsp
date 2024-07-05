<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Bill</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f0f8ff;
            position: relative;
        }
        .container {
            position: relative;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            max-width: 600px;
            width: 90%;
            text-align: center;
        }
        h1 {
            color: #007bff;
            margin-bottom: 20px;
        }
        .data {
            font-size: 20px;
            line-height: 1.6;
            margin-bottom: 15px;
            color: #333;
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
    </style>
</head>
<body>
    <div class="container">
        <h1>Patient Bill</h1>
        <div class="data"><span>Patient Name:</span> ${key.name}</div>
        <c:forEach var="medicine" items="${key.medicines}">
            <div class="data"><span>Medicine Name:</span> ${medicine.name}</div>
            <div class="data"><span>Price:</span> ${medicine.price}</div>
        </c:forEach>
        <a href="/home" class="btn">Back To Home</a>
    </div>
</body>
</html>
