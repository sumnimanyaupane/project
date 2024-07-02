<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 28/06/2024
  Time: 7:20 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="nav.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Article Cards</title>
    <link rel="stylesheet" href="navFooter.css">
    <style>
        body {
            font-family: fantasy;
            background-color: gainsboro;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            display: flex;
            gap: 20px;
            padding-top: 600px;
            padding-bottom: 20px;
        }
        .card {
            background-color: cadetblue;
            color: #fff;
            border-radius: 8px;
            overflow: hidden;
            width: 300px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card img {
            width: 100%;
            height: auto;
        }
        .card-content {
            padding: 20px;
        }
        .card-content h2 {
            margin: 0 0 10px;
            font-size: 1.5em;
        }
        .card-content p {
            margin: 0;
            font-size: 1em;
            line-height: 1.5em;
        }
        .card-content .tag {
            color: #aaa;
            font-size: 0.9em;
            margin-bottom: 10px;
            display: block;
        }

        .loginbtn {
            padding: 10px 20px;
            background-color:steelblue;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 20px;
        }
        .loginbtn:hover {
            background-color: #2e71bb;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card">
        <img src="hotel5.jpeg" alt="Ecommerce Trends">
        <div class="card-content">
            <h2>Hotel Moon</h2>
            <h4>Let’s start the planning process. Contact us for more information or to schedule an appointment.</h4>
            <form action="cardEvent.jsp">
                <input type="submit" value="BOOK EVENT" class="loginbtn">
            </form>
        </div>
    </div>
    <div class="card">
        <img src="hotel5.jpeg" alt="Fashion Ecommerce">
        <div class="card-content">
            <h2>Hotel Moon</h2>
            <h4>Let’s start the planning process. Contact us for more information or to schedule an appointment.</h4>
            <form action="card.jsp">
                <input type="submit" value="BOOK ROOM" class="loginbtn">
            </form>
        </div>
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

