<%--
  Created by IntelliJ IDEA.
  User: shital-nyaupane
  Date: 5/9/24
  Time: 6:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Navbar</title>
    <link rel="stylesheet" href="navbar.css">
    <link rel="stylesheet" href="footer.css">
    <link rel="stylesheet" href="book.css">
    <link rel="stylesheet" href="../amenities.css">
    <link rel="stylesheet" href="image.css">
    <link rel="stylesheet" href="../about.css">
<%--    <link rel="stylesheet" href="pricing.css">--%>

</head>
<body>
<!-- navbar -->

<div class="nav">
    <ul>
        <li><a href="navbar.jsp"><pre>
                 HOTEl SRIKHANDA
                 Battishputali,Kathmandu
</pre> </a></li>
        <li><a href="price.jsp">Price</a></li>
        <li><a href="../register.jsp"> <input type="submit" value="BOOK " class="book"> </a></li>
        <li><a href="../adminlogin.jsp">Admin</a></li>
    </ul>
</div>


<%--text image--%>

<%--<div class="container">--%>
<%--    <img src="hotel1.jpeg" alt="Background Image" class="background-image">--%>
<%--    <div class="overlay">--%>
<%--        <h1>"Best hotel in Kathmandu.<br>Customer satisfaction is<br>our motto"</h1>--%>
<%--    </div>--%>
<%--</div>--%>

<%--about us--%>
<div class="about"><p>About Hotel</p></div>
<div class="container1">
    <div class="image">
        <img src="../image/hotel6.jpg" alt="Hyatt Regency Kathmandu">
    </div>
    <div class="text">
        <h2>A Five Star Hotel Where Luxury Meets Culture</h2>
        <p>Set on 2 acres of landscaped grounds, Hotel Srikhanda Kathmandu is a luxury five-star hotel
            designed in traditional style architecture, ideally located only 4 kilometres away from
            the international airport. Situated in a city with a plethora of ancient sites and fascinating
            architecture, our hotel is a gateway to the city’s top attractions like Boudhanath, Pashupatinath,
            Basantapur, Thamel, Bhaktapur Durbar Square, Patan Durbar Square and much more. You not only
            experience luxurious hospitality, but you also get a cultural fest while at Hotel Srikhanda.</p>
    </div>
</div>

<div class="container1">
    <div class="text">
        <h2>Weddings & Celebrations</h2>
        <p>Our hotel provides an exquisite wedding location, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
    </div>
    <div class="image">
        <img src="../image/hotel5.jpeg" alt="Hyatt Regency Kathmandu">
    </div>
</div>

<div class="container1">
    <div class="image">
        <img src="../image/hotel6.jpg" alt="Hyatt Regency Kathmandu">
    </div>
    <div class="text">
        <h2>Meetings & Events</h2>
        <p>Our hotel has over 950 square metres (10,100 square feet) of impressive meeting space, with numerous outdoor venues available within the hotel grounds.</p>
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



<%--GALLERY--%>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    .gallery {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        justify-content: center;
        padding-top: 4%;
    }
    .gallery-item {
        width: calc(33% - 20px);
        margin-bottom: 20px;
    }
    .gallery-item img {
        width: 100%;
        height: 100%;
        display: block;
        border-radius: 8px;
    }
    .header h1 {
        text-align: center;
        padding-top: 6%;

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
</body>
<body>

<div class="header">
    <h1>HOTEL SRIKHANDA Kathmandu</h1>
</div>

<div class="gallery">
    <div class="gallery-item">
        <img src="../room1.jpg" alt="Image 1">
    </div>
    <div class="gallery-item">
        <img src="../image/room.png" alt="Image 2">
    </div>
    <div class="gallery-item">
        <img src="../image/cashier.jpg" alt="Image 3">
    </div>
    <div class="gallery-item">
        <img src="../image/hotel3.avif" alt="Image 4">
    </div>
    <div class="gallery-item">
        <img src="../image/hotel1.jpeg" alt="Image 5">
    </div>
    <div class="gallery-item">
        <img src="../image/hotel2.jpeg" alt="Image 6">
    </div>
</div>


<!-- footer -->
<div class="f1">
    <div class="first">
        <ul class="icon" >
            <li><pre>
        Location : Hotel Srikhanda
        Paryatak Marg, Durbar Marg,
        Ward no. 1, Kathmandu District,
        Province 3, Nepal
        Tel: +977 1 4248999, 4240520
        Fax: +977 1 4227781, 4227782
        srikhanda@hotel.com.np
    </pre></li>
<%--            <li><pre>--%>
<%--        Suites & Rooms--%>
<%--        Deluxe Room--%>
<%--        Heritage Deluxe Room--%>
<%--        Club Shangri-La--%>
<%--        The Junior Suites--%>
<%--        The Business Suites--%>
<%--        The Presidential Suites--%>
<%--        </pre></li>--%>
            <li><pre>
        ENQUIRY
        Hotel Srikhanda:Active: 9.30 AM - 6.00 PM NPT
        +977-01-4511113, 4529820
        ABC: +977 9851354455
        XYZ: +977 9851355861
        Email: <a href="#">hotelsrikhanda@gmail.com</a>
        For 24Hrs Hotel Support
        <a href="https://maps.app.goo.gl/uc2gXcBB2i8rGdf8A">Location</a>
</pre> </li>
            <div class="footer-map">
                <h3>Our Location</h3>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1766.2054409364562!2d85.34213249999999!3d27.704597399999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb196caf5f8b19%3A0xa703f39598afafc5!2sHotel%20Srikhanda!5e0!3m2!1sen!2snp!4v1719579464919!5m2!1sen!2snp" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                <%--            <div id="map"></div>--%>
            </div>
        </ul>
        <div class="footerContainer">
            <div class="socialIcons">
                <a href=""><i class="fa-brands fa-facebook"></i></a>
                <a href=""><i class="fa-brands fa-instagram"></i></a>
                <a href=""><i class="fa-brands fa-twitter"></i></a>
                <a href=""><i class="fa-brands fa-google-plus"></i></a>
                <a href=""><i class="fa-brands fa-youtube"></i></a>
            </div>
            <div class="footerBottom">
                <p>Copyright &copy;2024; Designed by <span class="designer">Shova</span></p>
            </div>
        </div>
    </div>
</div>

</body>
</html>
