<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 10/06/2024
  Time: 5:55 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="nav.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="image2.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .dropdown-form {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            justify-content: center;
            align-items: center;
        }

        .dropdown-select {
            width: 300px;
            padding: 20px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            text-align: center;
        }
        .select{
            width: 400px;
            padding: 20px;
            font-size: 20px;
            background-color: #fff;
            text-align: center;
            gap: 10px;

        }

        .submit-button {
            margin-top: 10px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .submit-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<form  method="post" class="dropdown-form" action="DateBooking">
    <div class="select">
        <label for="checkindate">checkindate:</label>
        <input type="date" id="checkindate" name="checkindate" required>
        <br>
        <div class="select">
            <label for="checkoutdate">checkoutdate:</label>
            <input type="date" id="checkoutdate" name="checkoutdate" required>
            <br>
    </div>
    <input type="submit" value="Check Availability" class="submit-button">
    </div>
</form>

<%--<div class="container">--%>
<%--    <img src="hotel5.jpeg" alt="Background Image" class="background-image">--%>
<%--    <div class="overlay">--%>
<%--        <h1>"check in time-before 3:00pm."<br>"check out time-12:00pm"</h1>--%>
<%--    </div>--%>
<%--</div>--%>

<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
        out.println("<p style='color:red'>" + errorMessage + "</p>");
    }
%>
</body>
</html>

