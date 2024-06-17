package com.example.project;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MultiQueryServlet")
public class MultiQueryServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/postgres";
    private static final String DB_USER = "postgres";
    private static final String DB_PASSWORD = "postgres";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String roomtype = request.getParameter("roomtype");
        String checkindate = request.getParameter("checkindate");
        String checkoutdate = request.getParameter("checkoutdate");

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            // First query
            String sql1 = "SELECT * FROM checking WHERE roomtype = ?  AND status = 'available'";
            try (PreparedStatement pstmt1 = conn.prepareStatement(sql1)) {
                pstmt1.setString(1, roomtype);
                pstmt1.setString(2, checkindate);
                try (ResultSet rs1 = pstmt1.executeQuery()) {
                    if (rs1.next()) {
                        out.println("<p>First Query: Success - Room is available.</p>");
                    } else {
                        out.println("<p>First Query: No available rooms found.</p>");
                    }
                }
            }

            // Second query
            String sql2 = "SELECT COUNT(*) FROM booking WHERE (checkindate <= ? AND checkoutdate >= ?) OR (checkindate <= ? AND checkoutdate >= ?)";
            try (PreparedStatement pstmt2 = conn.prepareStatement(sql2)) {
                pstmt2.setString(1, checkoutdate);
                pstmt2.setString(2, checkindate);
                pstmt2.setString(3, checkoutdate);
                pstmt2.setString(4, checkindate);
                try (ResultSet rs2 = pstmt2.executeQuery()) {
                    if (rs2.next()) {
                        int count = rs2.getInt(1);
                        if (count > 0) {
                            out.println("<p>Second Query: Error - Overlapping bookings found.</p>");
                        } else {
                            out.println("<p>Second Query: No overlapping bookings.</p>");
                        }
                    }
                }
            }

            out.println("<p>Status: Success</p>");
        } catch (SQLException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            out.println("<p>Status: Error</p>");
            out.println("<p>Message: " + e.getMessage() + "</p>");
        }
    }
}
