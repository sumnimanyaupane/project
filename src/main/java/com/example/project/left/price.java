package com.example.project.left;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/price")
public class price extends HttpServlet {
//    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException , ServletException {
        String price = request.getParameter("price");
       HttpSession session = request.getSession();
       session.setAttribute("price", price);

        if (validate(price)) {
            response.sendRedirect("price.jsp");
        }
        else {
            response.sendRedirect("error.jsp");
        }
    }

    private boolean validate(String price) {
        String dbUrl = "jdbc:postgresql://localhost:5432/postgres";
        String dbUsername = "postgres";
        String dbPassword = "postgres";

        try {
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword) ;
            String sql = "SELECT price FROM checking WHERE roomtype= ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, price);
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

