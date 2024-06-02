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
    <title>Navbar</title>
    <link rel="stylesheet" href="navbar.css">
    <link rel="stylesheet" href="footer.css">
    <link rel="stylesheet" href="book.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="image.css">
</head>
<body>
<!-- navbar -->
<%--<div id="nav1">--%>
<%--<div id="navbar">--%>
    <div class="nav">
    <ul>
        <li><a href="#"><pre>
        Contact: 9812345678
        email:hotel@123gmail.com
      </pre> </a></li>
        <!-- <li><a href="#">About</a></li> -->
        <!-- <li><a href="#">Services</a></li> -->
        <li><a href="#"><pre>
        HOTEl SRIKHANDA
        Battishputali,Kathmandu
      </pre> </a></li>
        <li><a href="login.jsp"> <input type="submit" value="BOOK" class="book"> </a></li>
        <a href="#"><img src="Location.png" alt="Logo" class="logo"></a>
    </ul>
    </div>
<%--</div>--%>

<%--<div class="content">--%>

<%--text image--%>
<div class="container">
    <img src="room1.jpg" alt="Background Image" class="background-image">
    <div class="overlay">
        <img src="room.png" alt="Logo" class="logo">
        <h1>"best hotel in kathmandu.<br>customer satisfaction is<br>our motto"</h1>
    </div>
</div>

<%--featured amenities--%>
    <hr>
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
    }
    .gallery-item {
        width: calc(33% - 20px);
        margin-bottom: 20px;
    }
    .gallery-item img {
        width: 100%;
        height: auto;
        display: block;
        border-radius: 8px;
    }
    .header {
        text-align: center;
        padding: 20px;
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
        <img src="room1.jpg" alt="Image 1">
    </div>
    <div class="gallery-item">
        <img src="room.png" alt="Image 2">
    </div>
    <div class="gallery-item">
        <img src="cashier.jpg" alt="Image 3">
    </div>
    <div class="gallery-item">
        <img src="textimage.jpeg" alt="Image 4">
    </div>
    <div class="gallery-item">
        <img src="room.png" alt="Image 5">
    </div>
    <div class="gallery-item">
        <img src="room1.jpg" alt="Image 6">
    </div>
</div>

<%--</div>--%>

<%--<script>--%>
<%--    window.onscroll = function() {myFunction()};--%>

<%--    var navbar = document.getElementById("navbar");--%>
<%--    var sticky = navbar.offsetTop;--%>

<%--    function myFunction() {--%>
<%--        if (window.pageYOffset >= sticky) {--%>
<%--            navbar.classList.add("sticky")--%>
<%--        } else {--%>
<%--            navbar.classList.remove("sticky");--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>


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
        reservation@yakandyeti.com.np
    </pre></li>
            <li><pre>
        Suites & Rooms
        Deluxe Room
        Heritage Deluxe Room
        Club Shangri-La
        The Junior Suites
        The Business Suites
        The Presidential Suites
        </pre></li>
            <li><pre>
        Conference & Events
       Regal Ballroom
       Regency Hall
       Durbar Hall
       Dynasty Hall
       Crystal Hall
       Senate & Viceroy
       Weddings
</pre></li>
            <li><pre>
        Culinary Delights
        The Chimney
        Spice Room
</pre> </li>
        </ul></div>
</div>


</body>
</html>
