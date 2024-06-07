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
        String checkoutdate = request.getParameter("checkoutdate");
        String contact = request.getParameter("contact");

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        String roomtype = (String) session.getAttribute("roomtype");
        String checkindate = (String) session.getAttribute("checkindate");

        if (username == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        if (roomtype == null) {
            response.sendRedirect("RoomChecking.jsp");
            return;
        }


        String URL = "jdbc:postgresql://localhost:5432/postgres";
        String USER = "postgres";
        String PASSWORD = "postgres";


        try {
            Class.forName("org.postgresql.Driver");
          Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            String sql = "INSERT INTO booking (numberofpeople,checkindate,checkoutdate,username,roomtype,contact) VALUES (?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, numberofpeople);
            preparedStatement.setDate(2, Date.valueOf(checkindate));
            preparedStatement.setDate(3, Date.valueOf(checkoutdate));
            preparedStatement.setString(4, username);
            preparedStatement.setString(5, roomtype);
            preparedStatement.setString(6, contact);

            int rows = preparedStatement.executeUpdate();
            if (rows > 0) {
                response.sendRedirect("status.jsp");
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

