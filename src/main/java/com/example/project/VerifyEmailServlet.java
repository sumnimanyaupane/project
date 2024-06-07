package com.example.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class VerifyEmailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String token = request.getParameter("token");

        if (token == null || token.isEmpty()) {
            request.setAttribute("message", "Invalid or missing token.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("verification.jsp");
            dispatcher.forward(request, response);
            return;
        }

        try {
            if (verifyToken(token)) {
                request.setAttribute("message", "Email verified successfully!");
            } else {
                request.setAttribute("message", "Invalid or expired token.");
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("verification.jsp");
        dispatcher.forward(request, response);
    }

    private boolean verifyToken(String token) throws SQLException {
        String url = "jdbc:postgresql://localhost:5432/postgres";
        String user = "postgres";
        String password = "postgres";

        Connection connection = DriverManager.getConnection(url, user, password);

        String query = "SELECT * FROM logindata WHERE token = ?";

        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, token);

        ResultSet resultSet = statement.executeQuery();

        boolean isValid = resultSet.next();
        if (isValid) {
            String updateQuery = "UPDATE logindata SET verified = TRUE WHERE token = ?";
            PreparedStatement updateStatement = connection.prepareStatement(updateQuery);
            updateStatement.setString(1, token);
            updateStatement.executeUpdate();
            updateStatement.close();
        }

        resultSet.close();
        statement.close();
        connection.close();

        return isValid;
    }
}
