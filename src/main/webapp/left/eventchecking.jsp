<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 28/06/2024
  Time: 7:37 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../nav.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../image2.css">
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

<form  class="dropdown-form" action="eventChecking" method="post">
    <label for="eventtype">eventtype:</label>
    <select name="eventtype" id="eventtype" class="dropdown-select">
        <option value="wedding">wedding</option>
        <option value="Bratabandha">Bratabandha</option>
        <option value="engagement"> engagement</option>
        <option value="Birthday">Birthday</option>
        <option value="college program">college program</option>
        <option value="anniversary">anniversary</option>
        <option value="school program">school program</option>
    </select>
    <br>

    <input type="submit" value="Check Availability" class="submit-button">
</form>

<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
        out.println("<p style='color:red'>" + errorMessage + "</p>");
    }
%>
</body>
</html>
