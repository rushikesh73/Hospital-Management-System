<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Total Bill</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .container h1 {
            color: #007bff;
            margin-bottom: 20px;
        }
        .container h3{
        color: orange;
        }
        .container img {
            margin-top: 20px;
            max-width: 80%;
        }
        .container button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 20px;
            border-radius: 10px;
            transition: background-color 0.3s;
        }
        .container button:hover {
            background-color: #0056b3;
        }
        .total {
            margin-top: 20px;
            font-size: 24px;
        }
    </style>
</head>
<body>

<% String name = request.getParameter("name");
   int a = Integer.parseInt( request.getParameter("price1"));
   int b = Integer.parseInt( request.getParameter("price2"));
   int c = Integer.parseInt( request.getParameter("price3"));
   int d = Integer.parseInt( request.getParameter("price4"));
   int e = Integer.parseInt( request.getParameter("price5"));
  

   int total = a+b+c+d+e; 



%>

<div class="container">
    <h1>Generate Bill</h1>
    
    <form action="total" method="post">
        <input type="hidden" value="<%=name%>" name="name">
        <input type="hidden" value="<%=total%>" name="totalbill">
        
        <div class="total">
             <h3> <%=name %></h3>
            <h2>Your Total Bill: <%=total%></h2>
        </div>
        
        <img alt="UPI Image" src="images/app.png"><br><br>
        
        <button type="submit">Pay Now</button>
    </form>
</div>








</body>
</html>