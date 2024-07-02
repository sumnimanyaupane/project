<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 29/06/2024
  Time: 9:25 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ include file="nav.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Menu Booking Details</title>
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
        <th>meal type</th>
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
            rs = stmt.executeQuery("SELECT * FROM menu_selection ");

            while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getString("id") %></td>
        <td><%= rs.getString("meal_type") %></td>
<%--        <td><%= rs.getString("item") %></td>--%>
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
<form action="AdminTableChecking.jsp">
    <input type="submit" value="back" class="loginbtn">
</form>
<form action="adminEvent.jsp">
    <input type="submit" value="next" class="loginbtn">
</form>
</body>
</html>
