<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 24/05/2024
  Time: 4:51 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
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
<form  method="post" class="dropdown-form" action="status">
<input type="submit" value="SUCCESSFULLY BOOKED!!!
tap to continue to view home page" class="submit-button">
</form>
</body>
</html>
