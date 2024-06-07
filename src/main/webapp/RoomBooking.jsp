<%--
  Created by IntelliJ IDEA.
  User: shital-nyaupane
  Date: 5/1/24
  Time: 9:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<form  method="post" class="dropdown-form" action="BookingServlet">
        <div class="select">
        <label for="numberofpeople">numberofpeople:</label>
        <input type="text" id="numberofpeople" name="numberofpeople" required>
        <br>

<%--        <label for="checkindate">checkindate:</label>--%>
<%--        <input type="date" id="checkindate" name="checkindate" required>--%>
<%--        <br>--%>

        <label for="checkoutdate">checkoutdate:</label>
        <input type="date" id="checkoutdate" name="checkoutdate" required>
        <br>

            <label for="contact">contact:</label>
            <input type="text" id="contact" name="contact" required>
            <br>
        </div>
    <input type="submit" value="continue" class="submit-button">
</form>
</body>
</html>

