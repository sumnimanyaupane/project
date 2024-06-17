<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 27/06/2024
  Time: 5:42 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Information Details</title>
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
            width: 80%;
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
    </style>
</head>
<body>
<nav>
    <a href="navbar.jsp">Home</a>

    <a href="Admin2.jsp">checking Page</a>
    <pre>Hotel Srikhanda
        Battisputali,Kathmandu
    </pre>
</nav>
<h1>Information Details</h1>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>numberofpeople</th>
        <th>checkindate</th>
        <th>checkoutdate</th>
        <th>fullname</th>
        <th>roomtype</th>
        <th>contact</th>
        <th>address</th>
        <th>nationality</th>
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
            rs = stmt.executeQuery("SELECT * FROM booking");

            while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getString("id") %></td>
        <td><%= rs.getString("numberofpeople") %></td>
        <td><%= rs.getString("checkindate") %></td>
        <td><%= rs.getString("checkoutdate") %></td>
        <td><%= rs.getString("fullname") %></td>
        <td><%= rs.getString("roomtype") %></td>
        <td><%= rs.getString("contact") %></td>
        <td><%= rs.getString("address") %></td>
        <td><%= rs.getString("nationality") %></td>
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
</body>
</html>
