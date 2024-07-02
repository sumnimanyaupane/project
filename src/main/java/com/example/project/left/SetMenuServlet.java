package com.example.project.left;

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

@WebServlet("/setMenuServlet")
public class SetMenuServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] breakfastItems = request.getParameterValues("breakfast");
        String[] lunchItems = request.getParameterValues("lunch");
        String[] dinnerItems = request.getParameterValues("dinner");

        try {
            // Establish a connection to the PostgreSQL database
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "postgres");

            // Insert breakfast items into the database
            if (breakfastItems != null) {
                for (String item : breakfastItems) {
                    insertMenuItem(con, "breakfast", item);
                }
            }

            // Insert lunch items into the database
            if (lunchItems != null) {
                for (String item : lunchItems) {
                    insertMenuItem(con, "lunch", item);
                }
            }

            // Insert dinner items into the database
            if (dinnerItems != null) {
                for (String item : dinnerItems) {
                    insertMenuItem(con, "dinner", item);
                }
            }

            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("navbar.jsp");
    }

    private void insertMenuItem(Connection con, String mealType, String item) throws SQLException {
        String query = "INSERT INTO menu_selection (meal_type, item) VALUES (?, ?)";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, mealType);
        pst.setString(2, item);
        pst.executeUpdate();
        pst.close();
    }
}
