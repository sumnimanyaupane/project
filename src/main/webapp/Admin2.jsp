<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 27/06/2024
  Time: 5:55 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Room List</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background-color: #f0f0f0;
            margin: 0;
        }
        nav {
            width: 100%;
            background-color: #4CAF50;
            overflow: hidden;
        }
        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        nav a:hover {
            background-color: #ddd;
            color: black;
        }
        table {
            width: 50%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: white;
        }
        table, th, td {
            border: 3px solid #4CAF50;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        .loginbtn {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 20px;
        }
        .loginbtn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<nav>
    <a href="navbar.jsp">Home</a>

    <a href="Admin1.jsp">Booking Page</a>
    <pre>Hotel Srikhanda
        Battisputali,Kathmandu
    </pre>
</nav>
<h1>Room List</h1>
<table>
    <thead>
    <tr>
        <th>Room Type</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <%
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        String URL = "jdbc:postgresql://localhost:5432/postgres";
        String USER = "postgres";
        String PASSWORD = "postgres";

        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT * FROM checking");

            while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getString("roomtype") %></td>
        <td><a href="#">edit/delete</a></td>
    </tr>
    <%
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
    </tbody>
</table>
<form action="AdminTableBooking.jsp">
<%--    <input type="submit" value="Continue" class="loginbtn">--%>
</form>
</body>
</html>

