<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: shital-nyaupane
  Date: 5/1/24
  Time: 9:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="nav.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking</title>
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

        .login-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 400px;
            text-align: center;
        }

        .login-container h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .login-form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .login-form label {
            text-align: left;
            color: #555;
            margin-bottom: 5px;
        }

        .login-form input {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
        }

        .login-form .loginbtn {
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .login-form .loginbtn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>Enter your Personal Details:</h2>
    <p>Selected rooms are available on the selected dates. Enter the further details to confirm booking.</p>
    <form class="login-form" action="BookingServlet" method="post">
        <label for="fullname">Fullname:</label>
        <input type="text" id="fullname" name="fullname" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>

        <label for="numberofpeople">Number of People:</label>
        <input type="text" id="numberofpeople" name="numberofpeople" required>

        <label for="contact">Contact:</label>
        <input type="text" id="contact" name="contact" required>

        <label for="nationality">Nationality:</label>
        <input type="text" id="nationality" name="nationality" required>

        <button type="submit" class="loginbtn">Confirm Booking</button>
    </form>

</div>

<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
        out.println("<p style='color:red'>" + errorMessage + "</p>");
    }
%>
</body>
</html>
