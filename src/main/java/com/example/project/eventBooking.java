package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/eventBooking")
public class eventBooking extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String numberofpeople = request.getParameter("numberofpeople");
        String contact = request.getParameter("contact");
        String address = request.getParameter("address");
        String fullname = request.getParameter("fullname");

        HttpSession session = request.getSession();
        String eventtype = (String) session.getAttribute("eventtype");
        String eventdate = (String) session.getAttribute("eventdate");

        String URL = "jdbc:postgresql://localhost:5432/postgres";
        String USER = "postgres";
        String PASSWORD = "postgres";


        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            String sql = "INSERT INTO eventbooking (numberofpeople,eventdate,eventtype,contact,address,fullname) VALUES (?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, numberofpeople);
            preparedStatement.setDate(2, Date.valueOf(eventdate));
            preparedStatement.setString(3, eventtype);
            preparedStatement.setString(4, contact);
            preparedStatement.setString(5, address);
            preparedStatement.setString(6, fullname);


            int rows = preparedStatement.executeUpdate();
            if (rows > 0) {
                response.sendRedirect("food.jsp");
            } else {
                request.setAttribute("errorMessage", "invalid credentials");
                request.getRequestDispatcher("eventBooking.jsp").forward(request, response);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

    }
}

