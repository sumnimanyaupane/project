package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/login")
public class login extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form data
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");


        // Database connection parameters
        String url = "jdbc:postgresql://localhost:5432/postgres";
        String user = "postgres";
        String dbPassword = "postgres";

        try {
            // Connect to the database
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(url, user, dbPassword);

            // Insert user data into the database
            PreparedStatement stmt = con.prepareStatement("INSERT INTO logindata (username,email, password) VALUES(?,?,?)");
            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, password);
            int rows = stmt.executeUpdate();

            if (rows > 0) {
                response.sendRedirect("RoomChecking.jsp");
            } else {
                out.println("<h2>Registration failed</h2>");
            }

            // Close the connection
            con.close();
        } catch (Exception e) {
            out.println(e);
        }

        out.close();
    }
}
