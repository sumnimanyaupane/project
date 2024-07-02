<%--
  Created by IntelliJ IDEA.
  User: shital-nyaupane
  Date: 4/27/24
  Time: 1:12 PM
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

<form  class="dropdown-form" action="checking" method="post">
    <label for="roomtype">roomtype:</label>
    <select name="roomtype" id="roomtype" class="dropdown-select">
        <option value="singleroom102">singleroom102</option>
        <option value="balconyfacingroom">balconyfacingroom</option>
        <option value="singleroom103">singleroom103</option>
        <option value="doubleroom203">doubleroom203</option>
        <option value="doubleroom202">doubleroom202</option>
        <option value="doubleroom201">doubleroom201</option>
        <option value="singleroom101">singleroom101</option>
    </select>
    <br>

    <input type="submit" value="Check Availability" class="submit-button">
</form>

<%--<div class="container">--%>
<%--    <img src="hotel4.jpeg" alt="Background Image" class="background-image">--%>
<%--    <div class="overlay">--%>
<%--        <h1>"Single Room- 1 king size bed."<br>"Double Room-two twin Single bed"</h1>--%>
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
