<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: shital-nyaupane
  Date: 5/5/24
  Time: 8:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="nav.jsp" %>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="image2.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: floralwhite;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: gainsboro;
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
<%--<h2>Login Form</h2>--%>
<div class="login-container">
    <h2>REGISTER</h2>
    <form class="login-form" action="register" method="post"  onsubmit="return validateForm()">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <input type="submit" value="Login" class="loginbtn">
        <p>already have an account?<a href="login.jsp">LOGIN</a></p>

    </form>
</div>
<script>
    function validateForm() {
        var emailField = document.getElementById('email');
        var email = emailField.value;

        // Basic email format check using regex
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!emailPattern.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        return true;
    }
</script>

<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
        out.println("<p style='color:red'>" + errorMessage + "</p>");
    }
%>

</body>
</html>
