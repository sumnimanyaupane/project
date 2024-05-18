package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/Checking")
public class Checking extends HttpServlet {
//    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException , ServletException {
        String roomtype = request.getParameter("roomtype");
        if (validate(roomtype)) {
            response.sendRedirect("pricing.jsp");
        }
        else {
            response.sendRedirect("error.jsp");
        }
    }

    private boolean validate(String roomtype) {
        String dbUrl = "jdbc:postgresql://localhost:5432/postgres";
        String dbUsername = "postgres";
        String dbPassword = "postgres";

        try {
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword) ;
            String sql = "SELECT * FROM checking WHERE roomtype= ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, roomtype);
            ResultSet result = statement.executeQuery();
            return result.next(); // Returns true if there is a matching row in the database
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
