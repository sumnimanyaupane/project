<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 25/05/2024
  Time: 8:59 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>room List</title>
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
<h1>room List</h1>
<table>
    <thead>
    <tr>
        <th>roomtype</th>
        <th>status</th>
    </tr>
    </thead>
    <tbody>
    <%
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        ResultSet rs1 = null;


        String URL = "jdbc:postgresql://localhost:5432/postgres";
        String USER = "postgres";
        String PASSWORD = "postgres";

        try {

            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(URL,USER,PASSWORD);
            stmt = conn.createStatement();
//            rs = stmt.executeQuery("update checking set status='available' where roomtype='?' ");
            rs = stmt.executeQuery("SELECT * FROM checking");


            while (rs.next()) {
 //
    %>
    <tr>
        <td><%= rs.getString("roomtype") %></td>
        <td><%= rs.getString("status") %></td>
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
<input type="submit" value="continue" class="loginbtn">
</form>
</body>
</html>

