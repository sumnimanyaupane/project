<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 29/06/2024
  Time: 5:26 pm
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
        <img src="image/hotel6.jpg" alt="Room Image">
        <form method="post" action="eventDate">
            <input type="text" id="eventtype" name="eventtype" value="wedding" required hidden>
            <h3>wedding hall</h3>
            <p>exquisite wedding location, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
            <div class="rate">
<%--                <p> Rate <span>Rs.3000</span></p>--%>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>

    <div class="card">
        <img src="image/hotel6.jpg" alt="Room Image">
        <form method="post" action="eventDate">
            <input type="text" id="eventtype" name="eventtype" value="Bratabandha" required hidden>
            <h3>Bratabandha</h3>
            <p>exquisite bratabandha location, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
            <div class="rate">
<%--                <p> Rate <span>Rs.3000</span></p>--%>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>

    <div class="card">
        <img src="image/hotel6.jpg" alt="Room Image">
        <form method="post" action="eventDate">
            <input type="text" id="eventtype" name="eventtype" value="engagement" required hidden>
            <h3>Enagagement</h3>
            <p>exquisite engagement location, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
            <div class="rate">
<%--                <p> Rate <span>Rs.3000</span></p>--%>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>
    <div class="card">
        <img src="image/hotel6.jpg" alt="Room Image">
        <form method="post" action="eventDate">
            <input type="text" id="eventtype" name="eventtype" value="Birthday" required hidden>
            <h3>Birthday celebration</h3>
            <p>exquisite birthday location, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
            <div class="rate">
<%--                <p> Rate <span>Rs.3000</span></p>--%>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>

    <div class="card">
        <img src="image/hotel6.jpg" alt="Room Image">
        <form method="post" action="eventDate">
            <input type="text" id="eventtype" name="eventtype" value="college program" required hidden>
            <h3>College Program</h3>
            <p>exquisite location for college program, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
            <div class="rate">
<%--                <p> Rate <span>Rs.3000</span></p>--%>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>
    <div class="card">
        <img src="image/hotel6.jpg" alt="Room Image">
        <form method="post" action="eventDate">
            <input type="text" id="eventtype" name="eventtype" value="anniversary" required hidden>
            <h3>Anniversary</h3>
            <p>exquisite location to celebrate anniversary with friends or family, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
            <div class="rate">
<%--                <p> Rate <span>Rs.3000</span></p>--%>
            </div>
            <input type="submit"  value="submit" >
        </form>
    </div>
    <div class="card">
        <img src="image/hotel6.jpg" alt="Room Image">
        <form method="post" action="eventDate">
            <input type="text" id="eventtype" name="eventtype" value="school program" required hidden>
            <h3>School Program</h3>
            <p>exquisite location for college program, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
            <div class="rate">
<%--                <p> Rate <span>Rs.3000</span></p>--%>
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


