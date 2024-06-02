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


@WebServlet("/checking")
public class checking extends HttpServlet {
//    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException , ServletException {
        String roomtype = request.getParameter("roomtype");
//        String status = request.getParameter("status");

        if (validate(roomtype)) {
            switch (roomtype) {
                case "SingleRoom101":
                case "SingleRoom103":
                case "SingleRoom102":
                    response.sendRedirect("RoomBooking.jsp");
                    break;
                case "DoubleRoom201":
                case "DoubleRoom202":
                case "DoubleRoom203":
                    response.sendRedirect("price.jsp");
                    break;
                default:
                    response.sendRedirect("error.jsp");
                    break;
            }
        }
//        else {
//            response.sendRedirect("error.jsp");
//        }
    }

    private boolean validate(String roomtype ) {
        String dbUrl = "jdbc:postgresql://localhost:5432/postgres";
        String dbUsername = "postgres";
        String dbPassword = "postgres";

        try {
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword) ;
            String sql = "SELECT * FROM checking WHERE roomtype= ? and status='available' ";
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
