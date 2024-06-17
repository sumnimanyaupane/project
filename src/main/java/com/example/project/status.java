package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/status")
public class status extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException , ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String dbUrl = "jdbc:postgresql://localhost:5432/postgres";
        String dbUsername = "postgres";
        String dbPassword = "postgres";

        try {
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
//            String sql =" UPDATE checking SET status = 'booked' WHERE roomtype = booking.roomtype;";
            String sql ="UPDATE checking SET status = 'booked' FROM booking WHERE checking.roomtype = booking.roomtype; ";
            PreparedStatement statement = conn.prepareStatement(sql);

//            ResultSet result = statement.executeQuery();
//            result.next();// Returns true if there is a matching row in the database
            int rows = statement.executeUpdate();

            if (rows > 0) {
                response.sendRedirect("navbar.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
