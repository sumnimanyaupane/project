package com.example.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FoodSelectionServlet")
public class FoodSelectionServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] selectedFoods = request.getParameterValues("food");
        if (selectedFoods != null) {
            Connection conn = null;
            PreparedStatement pstmt = null;

            try {
                // Load the PostgreSQL driver
                Class.forName("org.postgresql.Driver");

                // Connect to the database
                String url = "jdbc:postgresql://localhost:5432/postgres";
                String user = "postgres";
                String password = "postgres";
                conn = DriverManager.getConnection(url, user, password);

                // Prepare the SQL statement
                String sql = "INSERT INTO food_selection (food_item) VALUES (?)";
                pstmt = conn.prepareStatement(sql);

                // Insert each selected food item into the database
                for (String food : selectedFoods) {
                    pstmt.setString(1, food);
                    pstmt.executeUpdate();
                }

                // Redirect or inform the user
                response.getWriter().println("Selection saved successfully!");

            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                response.getWriter().println("Error: " + e.getMessage());
            } finally {
                // Clean up resources
                try {
                    if (pstmt != null) pstmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            response.getWriter().println("No food item selected.");
        }
    }
}
