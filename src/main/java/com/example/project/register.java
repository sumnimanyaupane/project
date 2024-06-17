package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/register")
public class register extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form data
        String email = request.getParameter("email");
        String password = request.getParameter("password");


        // Database connection parameters
        String url = "jdbc:postgresql://localhost:5432/postgres";
        String user = "postgres";
        String dbPassword = "postgres";



        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(url, user, dbPassword);

            // Insert user data into the database
            PreparedStatement stmt = con.prepareStatement("INSERT INTO logindata (email, password) VALUES(?,?)");
            stmt.setString(1, email);
            stmt.setString(2, password);
            int rows = stmt.executeUpdate();



            if (rows > 0) {
                HttpSession session = request.getSession();
                response.sendRedirect("RoomChecking.jsp");
            } else {
                request.setAttribute("errorMessage", "Invalid email or password");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }

            con.close();
        } catch (Exception e) {
            out.println(e);
        }

        out.close();
    }
}
