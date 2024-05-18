<%--
  Created by IntelliJ IDEA.
  User: shital-nyaupane
  Date: 4/27/24
  Time: 1:12 PM
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
<form  method="post" class="dropdown-form" action="Checking">
    <label for="roomtype">SELECT ROOM:</label>
    <select name="dropdown" id="roomtype" class="dropdown-select">
<%--        <option value="option1">select room type</option>--%>

        <option value="SingleRoom101">SingleRoom101</option>
        <option value="SingleRoom102">SingleRoom102</option>
        <option value="SingleRoom103">SingleRoom103</option>
        <option value="SingleRoom104">SingleRoom104</option>
        <option value="SingleRoom105">SingleRoom105</option>
        <option value="DoubleRoom101">DoubleRoom101</option>
        <option value="DoubleRoom102">DoubleRoom102</option>
        <option value="DoubleRoom103">DoubleRoom103</option>
        <option value="DoubleRoom104">DoubleRoom104</option>
        <option value="DoubleRoom105">DoubleRoom105</option>
    </select>
    <br>
    <input type="submit" value="Check Availability" class="submit-button">
</form>
</body>
</html>
