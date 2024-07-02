<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 30/06/2024
  Time: 8:48 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ include file="nav.jsp" %>

<html>
<head>
    <title>Booking Success</title>
    <link rel="stylesheet" href="navFooter.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .success-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: white;
            padding-top: 200px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .success-content {
            flex: 1;
            text-align: left;
            padding-top: 300px;
            padding-left: 80px;
        }

        .success-content h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .success-content p {
            font-size: 18px;
            margin-bottom: 30px;
        }

        .home-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .home-link:hover {
            background-color: #45a049;
        }

        .success-image {
            flex: 1;
            text-align: right;
            padding-top: 500px;
            padding-right: 10px;
        }

        .success-image img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
<div class="success-container">
    <div class="success-content">
        <h1>Booked Successfully</h1>
        <p>Your booking has been confirmed.</p>
        <a href="navbar1.jsp" class="home-link">Go to Home Page</a>
    </div>
    <div class="success-image">
        <img src="hotel9.png" alt="Booking Image">
    </div>
</div>

<footer>
    <div class="footer-container">
        <div class="footer-info">
            <h3>Hotel Moon</h3>
            <p>Battisputali, Kathmandu</p>
            <p>City, State, ZIP</p>
            <p>Email: info@hotelbooking.com</p>
            <p>Phone: (01) 4511113</p>
        </div>
        <li><pre>
        ENQUIRY

        Hotel Moon:Active: 9.30 AM - 6.00 PM NPT

        +977-01-4511113, 4529820

        xyz: +977 9851354455

        XYZ: +977 9851355861

        For 24Hrs Hotel Support
</pre> </li>
        <div class="footer-map">
            <h3>Our Location</h3>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1766.2054409364562!2d85.34213249999999!3d27.704597399999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb196caf5f8b19%3A0xa703f39598afafc5!2sHotel%20Srikhanda!5e0!3m2!1sen!2snp!4v1719579464919!5m2!1sen!2snp" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            <%--            <div id="map"></div>--%>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2024 Hotel Booking System. All rights reserved.</p>
    </div>
</footer>

</body>
</html>
