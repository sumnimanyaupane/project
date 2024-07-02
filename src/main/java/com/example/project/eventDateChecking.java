package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/eventDateChecking")
public class eventDateChecking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String eventdate = request.getParameter("eventdate");
//        String eventtype = request.getParameter("eventtype");

        HttpSession session = request.getSession();
        String eventtype = (String) session.getAttribute("eventtype");

        if (eventdate == null ) {
            request.setAttribute("errorMessage", "event date is required");
            request.getRequestDispatcher("eventDate.jsp").forward(request, response);
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
            String sql = "SELECT eventdate FROM eventbooking WHERE eventdate=? ";

            stmt = conn.prepareStatement(sql);
            stmt.setDate(1, Date.valueOf(eventdate));
//            stmt.setString(2, eventtype);

            rs = stmt.executeQuery();

            if (rs.next()) {
                request.setAttribute("errorMessage", "Selected dates are not available for booking");
                request.getRequestDispatcher("eventDate.jsp").forward(request, response);
            } else {
//                HttpSession session = request.getSession();

                session.setAttribute("eventdate", eventdate);
                response.sendRedirect("eventBooking.jsp");

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
