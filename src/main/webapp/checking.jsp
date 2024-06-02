<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 20/05/2024
  Time: 15:57
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

        .login-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
            text-align: center;
        }

        .login-container h2 {
            color: #333;
        }

        .login-form {
            display: flex;
            flex-direction: column;
            gap: 10px;
            margin-top: 20px;
        }

        .login-form input {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
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
    <h2>Login</h2>
    <form class="login-form" action="checking" method="post">
        <label for="roomtype">roomtype:</label>
        <select name="roomtype" id="roomtype" class="dropdown-select">
            <option value="SingleRoom103">SingleRoom103</option>
            <option value="SingleRoom102">SingleRoom102</option>
            <option value="SingleRoom101">SingleRoom101</option>
            <option value="DoubleRoom203">DoubleRoom203</option>
            <option value="DoubleRoom202">DoubleRoom202</option>
            <option value="DoubleRoom201">DoubleRoom201</option>
        </select>

<%--        <label for="date">date:</label>--%>
<%--        <input type="date" id="date" name="date" required>--%>

        <input type="submit" value="check" class="loginbtn">
<P>select between SingleRoom and DoubleRoom</P>
    </form>
</div>

</body>
</html>
