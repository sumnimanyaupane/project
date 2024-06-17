package com.example.project;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/DateBooking")
public class DateBooking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String checkindate = request.getParameter("checkindate");
        String checkoutdate = request.getParameter("checkoutdate");

        HttpSession session = request.getSession();
        String roomtype = (String) session.getAttribute("roomtype");

        if (checkindate == null || checkoutdate == null ) {
            out.println("<html><body><h2>Check-in, check-out dates are required.</h2></body></html>");
        }

        String dbUrl = "jdbc:postgresql://localhost:5432/postgres";
        String dbUsername = "postgres";
        String dbPassword = "postgres";

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

            // SQL query to check for overlapping dates for the specified room type
            String sql = "SELECT checkindate, checkoutdate FROM booking WHERE roomtype = ? AND (? < checkoutdate AND ? > checkindate)"; // Check if new booking overlaps with any existing booking

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, roomtype);
            stmt.setDate(2, Date.valueOf(checkindate));
            stmt.setDate(3, Date.valueOf(checkoutdate));

            rs = stmt.executeQuery();

            if (rs.next()) {
//                out.println("<html><body><h2>Selected dates are not available for booking.</h2></body></html>");
                request.setAttribute("errorMessage", "Selected dates are not available for booking");
                request.getRequestDispatcher("date.jsp").forward(request, response);
            } else {
//                HttpSession session = request.getSession();
                session.setAttribute("checkindate", checkindate);
                session.setAttribute("checkoutdate", checkoutdate);
                response.sendRedirect("RoomBooking.jsp");

            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            out.println("<html><body><h2>Error occurred: " + e.getMessage() + "</h2></body></html>");
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
