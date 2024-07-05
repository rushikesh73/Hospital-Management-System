<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .message-container {
            background-color: #fff;
            padding: 30px 50px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 600px;
            width: 100%;
        }
        .success-message {
            color: #4CAF50;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 15px;
        }
        .message-details {
            color: #333;
            font-size: 18px;
            margin-bottom: 20px;
        }
        .patient-details {
            text-align: left;
            margin: 20px 0;
        }
        .patient-details div {
            margin-bottom: 10px;
        }
        .patient-details span {
            font-weight: bold;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<% 
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String mobno = request.getParameter("mobno");
    String disease = request.getParameter("disease");
    String location = request.getParameter("location");
    String entryDate = request.getParameter("entryDate");
    String doctor = request.getParameter("doctor");
    String info = request.getParameter("info");
%>

<div class="message-container">
    <div class="success-message">Data saved successfully!</div>
    <div class="message-details">Your patient data was saved successfully. Thank you!</div>
    <div class="patient-details">
        <div><span>Patient Name:</span> <%= name %></div>
        <div><span>Patient Age:</span> <%= age %></div>
        <div><span>Patient Mobile No:</span> <%= mobno %></div>
        <div><span>Patient Disease:</span> <%= disease %></div>
        <div><span>Patient Address:</span> <%= location %></div>
        <div><span>Entry Date:</span> <%= entryDate %></div>
        <div><span>Doctor Name:</span> <%= doctor %></div>
        <div><span>Description:</span> <%= info %></div>
    </div>
    <a href="/home" class="btn">Back To Home</a>
</div>

</body>
</html>
