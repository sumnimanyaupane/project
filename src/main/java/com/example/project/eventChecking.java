package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


@WebServlet("/eventChecking")
public class eventChecking extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException , ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String eventtype = request.getParameter("eventtype");

        if (validate(eventtype)) {
            HttpSession session = request.getSession();
            session.setAttribute("eventtype", eventtype);
            response.sendRedirect("eventDate.jsp");
        }
        else {
            request.setAttribute("errorMessage", "not available");
            request.getRequestDispatcher("eventchecking.jsp").forward(request, response);
        }
    }

    private boolean validate(String eventtype) {
        String dbUrl = "jdbc:postgresql://localhost:5432/postgres";
        String dbUsername = "postgres";
        String dbPassword = "postgres";

        try {
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword) ;
//            String sql = "SELECT checkindate, checkoutdate FROM booking WHERE roomtype = ? and (? < checkoutdate AND ? > checkindate) ";
            String sql = "SELECT * FROM eventchecking WHERE eventtype= ?  ";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, eventtype);
            ResultSet result = statement.executeQuery();
            return result.next();


        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }



    }
}
