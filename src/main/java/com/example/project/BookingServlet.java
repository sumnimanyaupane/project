package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {

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


        try {
            Class.forName("org.postgresql.Driver");
          Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            String sql = "INSERT INTO booking (numberofpeople,checkindate,checkoutdate,username,roomtype) VALUES (?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, numberofpeople);
            preparedStatement.setDate(2, Date.valueOf(checkindate));
            preparedStatement.setDate(3, Date.valueOf(checkoutdate));
            preparedStatement.setString(4, username);
            preparedStatement.setString(5, roomtype);

            int rows = preparedStatement.executeUpdate();
            if (rows > 0) {
                response.sendRedirect("navbar.jsp");
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

