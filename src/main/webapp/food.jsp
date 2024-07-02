<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 30/06/2024
  Time: 7:27 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ include file="nav.jsp" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="food.css">
    <link rel="stylesheet" href="navFooter.css">
</head>
<body>
<div class="container">
    <form method="post" action="foodinsert.jsp" class="food-form">
        <h2>Select Food Items:</h2>
        <h3>Breakfast</h3>
        <input type="checkbox" name="lang" value="Tea">Tea                    --Rs.200<br>
        <input type="checkbox" name="lang" value="Coffee">Coffee              --Rs.100<br>
        <input type="checkbox" name="lang" value="Bread jam">Bread jam        --Rs.100<br>
        <input type="checkbox" name="lang" value="Fried Potato">Fried potato  --Rs.100<br>
        <input type="checkbox" name="lang" value="Boiled Egg">Boiled Egg      --Rs.100<br>
        <h3>Lunch</h3>
        <input type="checkbox" name="lang" value="Rice">Rice           --Rs.200<br>
        <input type="checkbox" name="lang" value="Lantil">Lantil          --Rs.100<br>
        <input type="checkbox" name="lang" value="Chicken">Chicken     --Rs.200<br>
        <input type="checkbox" name="lang" value="Mutton">Mutton       --Rs.150<br>
        <input type="checkbox" name="lang" value="Mango Pickle">Mango Pickle --Rs.280<br>
        <input type="checkbox" name="lang" value="Fried Chicken">Fried Chicken  --Rs.430<br>
        <input type="checkbox" name="lang" value="Curd">Curd -          --Rs.100<br>
        <input type="checkbox" name="lang" value="Naan Roti">Naan Roti   --Rs.100<br>
        <input type="checkbox" name="lang" value="Burger">Burger       --Rs.290<br>
        <input type="checkbox" name="lang" value="Pizza">Pizza        --Rs.400<br>
        <input type="submit" value="Submit">
    </form>
    <div class="image-container">
        <img src="menu.jpg" alt="Food Image">
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
