package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.*;


@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {

   public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException , ServletException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (validate(email, password)) {
            response.sendRedirect("adminDashboard.jsp");
        }
        else {
            request.setAttribute("errorMessage", "invalid credentials");
            request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
        }
    }

    public boolean validate(String email, String password) {
        String dbUrl = "jdbc:postgresql://localhost:5432/postgres";
        String dbUsername = "postgres";
        String dbPassword = "postgres";

        try {
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword) ;
            String sql = "SELECT * FROM admin WHERE email ='shovaneupane189@gmail.com' ;";
            Statement statement = conn.createStatement();
//            statement.setString(1, email);
////            statement.setString(2, password);
            ResultSet result = statement.executeQuery(sql);
            if(result.next()) {
                String retUser = result.getString("email");
                System.out.println(retUser);
                String retPass = result.getString("password");
                System.out.println(retPass);
                if (retUser.equals(email) && retPass.equals(password)) {
                    return true;
                }
                return false;
            }
            else{
                return false;
            }
//            return result.next(); // Returns true if there is a matching row in the database
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
