<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 29/06/2024
  Time: 4:27 pm
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ include file="nav.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Room Cards</title>
    <link rel="stylesheet" href="card.css">
    <link rel="stylesheet" href="navFooter.css">
</head>
<body>
<div class="card-container">
    <div class="card">
        <img src="srikhanda1.jpg" alt="Room Image">
        <form method="post" action="card">
            <input type="text" id="roomtype" name="roomtype" value="balconyfacingroom" required hidden>
            <h3>Balcony Facing Room </h3>
            <p>Serene garden or pool views are yours in a room featuring one king bed,
                granite bath with tub and walk-in shower, and separate work area with high-speed internet
                access. </p>
            <div class="rate">
                <p> Rate <span>Rs.3000</span></p>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>

    <div class="card">
        <img src="srikhanda1.jpg" alt="Room Image">
        <form method="post" action="card">
            <input type="text" id="roomtype" name="roomtype" value="singleroom101" required hidden>
            <h3>Single Room 101</h3>
            <p> Room featuring one king bed,
                granite bath with tub and walk-in shower, and separate work area with high-speed internet
                access. </p>
            <div class="rate">
                <p> Rate <span>Rs.3000</span></p>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>

    <div class="card">
        <img src="srikhanda1.jpg" alt="Room Image">
        <form method="post" action="card">
            <input type="text" id="roomtype" name="roomtype" value="singleroom102" required hidden>
            <h3>Single Room 102</h3>
            <p> Room featuring one king bed,
                granite bath with tub and walk-in shower, and separate work area with high-speed internet
                access. </p>
            <div class="rate">
                <p> Rate <span>Rs.3000</span></p>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>
    <div class="card">
        <img src="srikhanda1.jpg" alt="Room Image">
        <form method="post" action="card">
            <input type="text" id="roomtype" name="roomtype" value="singleroom103" required hidden>
            <h3>Single Room 103</h3>
            <p> Room featuring one king bed,
                granite bath with tub and walk-in shower, and separate work area with high-speed internet
                access. </p>
            <div class="rate">
                <p> Rate <span>Rs.3000</span></p>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>
    <div class="card">
        <img src="srikhanda1.jpg" alt="Room Image">
        <form method="post" action="card">
            <input type="text" id="roomtype" name="roomtype" value="doubleroom201" required hidden>
            <h3>Double Room 201</h3>
            <p> Room featuring two twin bed,
                granite bath with tub and walk-in shower, and separate work area with high-speed internet
                access. </p>
            <div class="rate">
                <p> Rate <span>Rs.3000</span></p>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>
    <div class="card">
        <img src="srikhanda1.jpg" alt="Room Image">
        <form method="post" action="card">
            <input type="text" id="roomtype" name="roomtype" value="doubleroom202" required hidden>
            <h3>Double Room 202</h3>
            <p> Room featuring two twin bed,
                granite bath with tub and walk-in shower, and separate work area with high-speed internet
                access. </p>
            <div class="rate">
                <p> Rate <span>Rs.3000</span></p>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>
    <div class="card">
        <img src="srikhanda1.jpg" alt="Room Image">
        <form method="post" action="card">
            <input type="text" id="roomtype" name="roomtype" value="doubleroom203" required hidden>
            <h3>Double Room 203</h3>
            <p> Room featuring two twin bed,
                granite bath with tub and walk-in shower, and separate work area with high-speed internet
                access. </p>
            <div class="rate">
                <p> Rate <span>Rs.3000</span></p>
            </div>
            <input type="submit"  value="submit" >
        </form>
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


