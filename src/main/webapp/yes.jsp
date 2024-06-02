<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 25/05/2024
  Time: 6:27 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form class="login-form" action="BookingServlet" method="post">
    <label for="numberofpeople">numberofpeople:</label>
    <input type="text" id="numberofpeople" name="numberofpeople" required>

    <input type="submit" value="Login" class="loginbtn">

</form>
</body>
</html>
