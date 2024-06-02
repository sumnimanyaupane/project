package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Base64;
import java.security.SecureRandom;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

@WebServlet("/login1")
public class login1 extends HttpServlet {
    private static final SecureRandom secureRandom = new SecureRandom();
    private static final Base64.Encoder base64Encoder = Base64.getUrlEncoder();

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form data
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Generate token
        String token = generateToken();

        // Database connection parameters
        String url = "jdbc:postgresql://localhost:5432/postgres";
        String user = "postgres";
        String dbPassword = "postgres";

        try {
            // Connect to the database
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(url, user, dbPassword);

            // Insert user data into the database
            PreparedStatement stmt = con.prepareStatement("INSERT INTO logindata (username, email, password, token) VALUES(?, ?, ?, ?)");
            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, password);
            stmt.setString(4, token);
            int rows = stmt.executeUpdate();

            if (rows > 0) {
                sendVerificationEmail(email, token);
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

    private String generateToken() {
        byte[] randomBytes = new byte[24];
        secureRandom.nextBytes(randomBytes);
        return base64Encoder.encodeToString(randomBytes);
    }

    private void sendVerificationEmail(String recipientEmail, String token) throws MessagingException {
        String host = "smtp.gmail.com"; // Replace with your SMTP server
        final String user = "shovaneupane189@gmail.com";
        final String password = "shova@123";

        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.auth", "true");

        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(user));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
        message.setSubject("Email Verification");
        message.setText("Click the link to verify your email: http://localhost:8090/your-app-context/verify?token=" + token);

        Transport.send(message);
    }
}
