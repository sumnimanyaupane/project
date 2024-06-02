package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/booking")
public class booking extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String numberofpeople = request.getParameter("numberofpeople");
        String checkindate = request.getParameter("checkindate");
        String checkoutdate = request.getParameter("checkoutdate");
        String username = request.getParameter("username");
        String roomtype = request.getParameter("roomtype");

        String URL = "jdbc:postgresql://localhost:5432/postgres";
        String USER = "postgres";
        String PASSWORD = "postgres";

        Connection connection = null;
        PreparedStatement insertStatement = null;
        PreparedStatement updateStatement = null;

        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);

            // Begin transaction
            connection.setAutoCommit(false);

            // Insert query
            String insertSql = "INSERT INTO booking (numberofpeople, checkindate, checkoutdate, username, roomtype) VALUES (?, ?, ?, ?, ?)";
            insertStatement = connection.prepareStatement(insertSql);
            insertStatement.setString(1, numberofpeople);
            insertStatement.setDate(2, Date.valueOf(checkindate));
            insertStatement.setDate(3, Date.valueOf(checkoutdate));
            insertStatement.setString(4, username);
            insertStatement.setString(5, roomtype);

            // Execute the insert statement
            int insertRows = insertStatement.executeUpdate();

            if (insertRows > 0) {
                // Update query
                String updateSql = "UPDATE booking SET roomtype = (SELECT checking.roomtype FROM checking WHERE checking.roomtype = ?) WHERE booking.roomtype = ?";
                updateStatement = connection.prepareStatement(updateSql);
                updateStatement.setString(1, roomtype);
                updateStatement.setString(2, roomtype);

                // Execute the update statement
                int updateRows = updateStatement.executeUpdate();

                if (updateRows > 0) {
                    // Commit transaction
                    connection.commit();
                    response.sendRedirect("navbar.jsp");
                } else {
                    // Rollback transaction on update error
                    connection.rollback();
                    out.println("<h2>Update error!</h2>");
                }
            } else {
                // Rollback transaction on insert error
                connection.rollback();
                out.println("<h2>Insert error!</h2>");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("<h2>Database error!</h2>");
            try {
                if (connection != null) {
                    connection.rollback();
                }
            } catch (SQLException rollbackEx) {
                rollbackEx.printStackTrace();
            }
        } finally {
            // Close resources
            try { if (updateStatement != null) updateStatement.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (insertStatement != null) insertStatement.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (connection != null) connection.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
}
