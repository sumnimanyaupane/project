<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 25/05/2024
  Time: 9:50 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>information details</title>
    <style>
        table {
            width: 50%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 2px solid black;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
    </style>
</head>
<body>
<h1>information details</h1>
<table>
    <thead>
    <tr>
        <th>numberofpeople</th>
        <th>checkindate</th>
        <th>checkoutdate</th>
        <th>username</th>
        <th>roomtype</th>
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
            conn = DriverManager.getConnection(URL,USER,PASSWORD);
            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT * FROM booking");

            while (rs.next()) {
//
    %>
    <tr>
        <td><%= rs.getString("numberofpeople") %></td>
        <td><%= rs.getString("checkindate") %></td>
        <td><%= rs.getString("checkoutdate") %></td>
        <td><%= rs.getString("username") %></td>
        <td><%= rs.getString("roomtype") %></td>
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

