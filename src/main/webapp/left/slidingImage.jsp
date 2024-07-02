<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 29/06/2024
  Time: 8:21 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../nav.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Slider</title>
    <link rel="stylesheet" href="slidingImage.css">
</head>
<body>
<div class="slider">
    <div class="slides">
        <!-- Radio buttons for navigation -->
        <input type="radio" name="radio-btn" id="radio1">
        <input type="radio" name="radio-btn" id="radio2">
        <input type="radio" name="radio-btn" id="radio3">
        <input type="radio" name="radio-btn" id="radio4">

        <!-- Slide images -->
        <div class="slide first">
            <img src="../image/hotel2.jpeg" alt="Image 1">
        </div>
        <div class="slide">
            <img src="../image/hotel4.jpeg" alt="Image 2">
        </div>
        <div class="slide">
            <img src="../image/hotel6.jpg" alt="Image 3">
        </div>
        <div class="slide">
            <img src="../image/hotel1.jpeg" alt="Image 4">
        </div>

        <!-- Automatic navigation -->
        <div class="navigation-auto">
            <div class="auto-btn1"></div>
            <div class="auto-btn2"></div>
            <div class="auto-btn3"></div>
            <div class="auto-btn4"></div>
        </div>

        <!-- Manual navigation -->
        <div class="navigation-manual">
            <label for="radio1" class="manual-btn"></label>
            <label for="radio2" class="manual-btn"></label>
            <label for="radio3" class="manual-btn"></label>
            <label for="radio4" class="manual-btn"></label>
        </div>
    </div>
</div>

<script src="../script.js"></script>


</body>
</html>

