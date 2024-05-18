package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    String URL = "jdbc:postgresql://localhost:5432/postgres";
     String USER = "postgres";
    String PASSWORD = "postgres";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String roomtype = request.getParameter("roomtype");
        int numberofpeople = Integer.parseInt(request.getParameter("numberofpeople"));
        String checkindate = request.getParameter("checkindate");
        String checkoutdate = request.getParameter("checkoutdate");


        try {
            Class.forName("org.postgresql.Driver");
          Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            String sql = "INSERT INTO booking (email,roomtype,numberofpeople,checkindate,checkoutdate) VALUES (?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, roomtype);
            preparedStatement.setString(3, String.valueOf(numberofpeople));
            preparedStatement.setString(4, checkindate);
            preparedStatement.setString(5, checkoutdate);


            int rows = preparedStatement.executeUpdate();
            if (rows > 0) {
                out.println("<h2>Room Booked successfully.</h2>");
            } else {
                out.println("<h2>error!!!</h2>");
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

