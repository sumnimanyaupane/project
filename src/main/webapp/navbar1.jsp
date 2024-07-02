<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 28/06/2024
  Time: 12:59 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="nav.jsp" %>
<%--<%@ include file="slidingImage.jsp" %>--%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="navImage.css">
    <link rel="stylesheet" href="about.css">
    <link rel="stylesheet" href="navFooter.css">
    <link rel="stylesheet" href="amenities.css">
<%--    <link rel="stylesheet" href="slidingImage.css">--%>
</head>
<body>
<img src="hotel1.jpeg" alt="Full-width image" class="full-width-image">

<%--about hotel--%>
<div class="about"><p>HOTEL Moon</p></div>
<div class="container1">
    <div class="image">
        <img src="hotel2.jpeg" alt="Hyatt Regency Kathmandu">
    </div>
    <div class="text">
        <h2>A Five Star Hotel Where Luxury Meets Culture</h2>
        <p>Set on 2 acres of landscaped grounds, Hotel Srikhanda Kathmandu is a luxury five-star hotel
            designed in traditional style architecture, ideally located only 4 kilometres away from
            the international airport. Situated in a city with a plethora of ancient sites and fascinating
            architecture, our hotel is a gateway to the city’s top attractions like Boudhanath, Pashupatinath,
            Basantapur, Thamel, Bhaktapur Durbar Square, Patan Durbar Square and much more.
            We are committed to providing equal access and opportunity for individuals with disabilities.
            The features also make this hotel more accessible for older individuals with changing abilities
            to ensure a seamless experience. Our overall goal is to improve usability throughout the hotel for
            all guests.</p>
    </div>
</div>

<div class="container1">
    <div class="text">
        <h2>Weddings & Celebrations</h2>
        <p>Our hotel provides an exquisite wedding location,
            offering exceptional service, facilities, theme-party facilities,
            and delicious cuisine to meet your needs.
            we offer a variety of indoor and outdoor spaces perfect for wedding functions,
            including bachelor and bachelorette parties, mehendi, and sangeet ceremonies.</p>
    </div>
    <div class="image">
        <img src="hotel6.jpg" alt="Hyatt Regency Kathmandu">
    </div>
</div>

<div class="container1">
    <div class="image">
        <img src="srikhanada11.jpg" alt="Hyatt Regency Kathmandu">
    </div>
    <div class="text">
        <h2>Meetings & Events</h2>
        <p>Our hotel has over 950 square metres (10,100 square feet) of impressive meeting space,
            with numerous outdoor venues available within the hotel grounds.
            You not only experience luxurious hospitality, but you also get a cultural fest while at
            Hotel Moon.</p>
    </div>
</div>

<%--featured amenities--%>
<hr>
<hr>
<main>
    <section class="amenities">
        <h2>Featured Amenities On-Site</h2>
        <div class="amenities-list">
            <div class="amenity">
                <i class="icon sustainability"></i>
                <span>Sustainability</span>
            </div>
            <div class="amenity">
                <i class="icon bar"></i>
                <span>Bar</span>
            </div>
            <div class="amenity">
                <i class="icon spa"></i>
                <span>Spa</span>
            </div>
            <div class="amenity">
                <i class="icon free-wifi"></i>
                <span>Free Wifi</span>
            </div>
            <div class="amenity">
                <i class="icon indoor-pool"></i>
                <span>Indoor Pool</span>
            </div>
            <div class="amenity">
                <i class="icon meeting-space"></i>
                <span>Meeting Space</span>
            </div>
            <div class="amenity">
                <i class="icon restaurant"></i>
                <span>Restaurant</span>
            </div>
            <div class="amenity">
                <i class="icon fitness-center"></i>
                <span>Fitness Center</span>
            </div>
            <div class="amenity">
                <i class="icon convenience-store"></i>
                <span>Convenience Store</span>
            </div>
        </div>

    </section>
    <section class="hotel-info">
        <h2>Hotel Information</h2>
        <div class="info-list">
            <div class="info-item">
                <i class="icon check-in"></i>
                <span>Check-in: 3:00 pm</span>
            </div>
            <div class="info-item">
                <i class="icon check-out"></i>
                <span>Check-out: 12:00 pm</span>
            </div>
            <div class="info-item">
                <i class="icon minimum-age"></i>
                <span>Minimum Age to Check In: 18</span>
            </div>
            <div class="info-item">
                <i class="icon pet-policy"></i>
                <span>Pet Policy: Pets Not Allowed</span>
            </div>
            <div class="info-item">
                <i class="icon parking"></i>
                <span>Parking: Complimentary On-Site Parking, Complimentary Valet Parking</span>
            </div>

        </div>
    </section>
</main>


<%--footer--%>
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


