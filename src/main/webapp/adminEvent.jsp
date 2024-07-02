<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 28/06/2024
  Time: 10:13 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ include file="nav.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Booking Details</title>
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

<h1>Information Details</h1>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>numberofpeople</th>
        <th>eventdate</th>
       <th>fullname</th>
        <th>eventtype</th>
        <th>contact</th>
        <th>address</th>
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
            rs = stmt.executeQuery("SELECT * FROM eventbooking");

            while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getString("id") %></td>
        <td><%= rs.getString("numberofpeople") %></td>
        <td><%= rs.getString("eventdate") %></td>
        <td><a href="adminMenu.jsp"> <%= rs.getString("fullname") %> </a></td>
        <td><%= rs.getString("eventtype") %></td>
        <td><%= rs.getString("contact") %></td>
        <td><%= rs.getString("address") %></td>
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
</table>
<form action="adminMenu.jsp">
    <input type="submit" value="back" class="loginbtn">
</form>

<form action="AdminTableBooking.jsp">
    <input type="submit" value="Back to Admin DashBoard" class="loginbtn">
</form>
</body>
</html>

