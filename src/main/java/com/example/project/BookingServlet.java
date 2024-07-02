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
        String contact = request.getParameter("contact");
        String nationality = request.getParameter("nationality");
        String address = request.getParameter("address");
        String fullname = request.getParameter("fullname");

        HttpSession session = request.getSession();
        String roomtype = (String) session.getAttribute("roomtype");
        String checkindate = (String) session.getAttribute("checkindate");
        String checkoutdate = (String) session.getAttribute("checkoutdate");


        if (roomtype == null) {
            response.sendRedirect("RoomChecking.jsp");
        }


        String URL = "jdbc:postgresql://localhost:5432/postgres";
        String USER = "postgres";
        String PASSWORD = "postgres";


        try {
            Class.forName("org.postgresql.Driver");
          Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            String sql = "INSERT INTO booking (numberofpeople,checkindate,checkoutdate,roomtype,contact,address,nationality,fullname) VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, numberofpeople);
            preparedStatement.setDate(2, Date.valueOf(checkindate));
            preparedStatement.setDate(3, Date.valueOf(checkoutdate));
            preparedStatement.setString(4, roomtype);
            preparedStatement.setString(5, contact);
            preparedStatement.setString(6, address);
            preparedStatement.setString(7, nationality);
            preparedStatement.setString(8, fullname);


            int rows = preparedStatement.executeUpdate();
            if (rows > 0) {
                response.sendRedirect("Success.jsp");
            } else {
                request.setAttribute("errorMessage", "invalid credentials");
                request.getRequestDispatcher("RoomBooking.jsp").forward(request, response);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

    }
}

