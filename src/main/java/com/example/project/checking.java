package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


@WebServlet("/checking")
public class checking extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException , ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String roomtype = request.getParameter("roomtype");

        if (validate(roomtype)) {
            HttpSession session = request.getSession();
            session.setAttribute("roomtype", roomtype);
            response.sendRedirect("date.jsp");
        }
        else {
            request.setAttribute("errorMessage", "not available");
            request.getRequestDispatcher("RoomChecking.jsp").forward(request, response);
        }
    }

    private boolean validate(String roomtype) {
        String dbUrl = "jdbc:postgresql://localhost:5432/postgres";
        String dbUsername = "postgres";
        String dbPassword = "postgres";

        try {
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword) ;
//            String sql = "SELECT checkindate, checkoutdate FROM booking WHERE roomtype = ? and (? < checkoutdate AND ? > checkindate) ";
            String sql = "SELECT * FROM checking WHERE roomtype= ?  ";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, roomtype);
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
