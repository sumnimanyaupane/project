<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 27/05/2024
  Time: 6:35 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="nav.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Moon Gallery</title>
    <link rel="stylesheet" href="navFooter.css">
<%--    <link rel="stylesheet" href="slidingImage.css">--%>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .gallery {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            justify-content: center;
            padding: 20px;
        }
        .gallery-item {
            background: #fff;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: calc(33% - 20px);
            margin-bottom: 20px;
        }
        .gallery-item img {
            width: 100%;
            height: auto;
            display: block;
        }
        .gallery-item p {
            font-size: 20px;
            color: midnightblue;
            margin: 10px;
            text-align: center;
        }
        .header {
            text-align: center;
            padding-top: 100px;
            background-color: antiquewhite;
            color: darkblue;
        }
        @media screen and (max-width: 768px) {
            .gallery-item {
                width: calc(50% - 20px);
            }
        }
        @media screen and (max-width: 480px) {
            .gallery-item {
                width: 100%;
            }
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Hotel Moon Gallery</h1>
</div>

<div class="gallery">
    <div class="gallery-item">
        <img src="srikhanada10.jpg" alt="Image 1">
        <p>Hotel Moon</p>
    </div>
    <div class="gallery-item">
        <img src="srikhanda7.jpg" alt="Image 2">
        <p>Hotel Moon</p>
    </div>
    <div class="gallery-item">
        <img src="srikhanda6.jpg" alt="Image 3">
        <p>Hotel Moon</p>
    </div>
    <div class="gallery-item">
        <img src="srikhanda1.jpg" alt="Image 4">
        <p>Hotel Moon</p>
    </div>
    <div class="gallery-item">
        <img src="srikhanda2.jpeg" alt="Image 5">
        <p>Hotel Moon</p>
    </div>
    <div class="gallery-item">
        <img src="srikhanada11.jpg" alt="Image 6">
        <p>Hotel Moon</p>
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
