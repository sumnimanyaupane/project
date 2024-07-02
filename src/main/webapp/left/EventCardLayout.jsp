<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 29/06/2024
  Time: 1:42 pm
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ include file="../nav.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Room Cards</title>
    <link rel="stylesheet" href="cardLayout.css">
</head>
<body>
<div class="card-container">
    <div class="card">
        <img src="../image/hotel1.jpeg" alt="Room Image">
        <div class="card-content">
            <h3>Wedding hall</h3>
            <p>exquisite wedding location, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
            <div class="rate">
                <p> Rate <span>$130</span></p>
                <p> Rate <span>$162</span></p>
            </div>
            <button><a href="eventchecking.jsp">Select & Book</a></button>
        </div>
    </div>
    <div class="card">
        <img src="../image/hotel2.jpeg" alt="Room Image">
        <div class="card-content">
            <h3>Dinning hall</h3>
            <p>Serene garden or pool views exquisite wedding location, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
            <div class="rate">
                <p> Rate <span>$130</span></p>
                <p> Rate <span>$162</span></p>
            </div>
            <button><a href="eventchecking.jsp">Select & Book</a></button>
        </div>
    </div>
    <div class="card">
        <img src="../image/hotel5.jpeg" alt="Room Image">
        <div class="card-content">
            <h3>Party hall</h3>
            <p>exquisite wedding location, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
            <div class="rate">
                <p> Rate <span>$146</span></p>
                <p> Rate <span>$181</span></p>
            </div>
            <button><a href="eventchecking.jsp">Select & Book</a></button>
        </div>
    </div>
    <div class="card">
        <img src="../image/hotel6.jpg" alt="Room Image">
        <div class="card-content">
            <h3>Celebration hall</h3>
            <p>exquisite wedding location, offering exceptional service, facilities, theme-party facilities, and delicious cuisine to meet your needs.</p>
            <div class="rate">
                <p> Rate <span>$146</span></p>
                <p> Rate <span>$181</span></p>
            </div>
            <input type="text" id="roomtype" name="roomtype" hidden>
            <button><a href="eventchecking.jsp">Select & Book</a></button>
        </div>
    </div>
</div>
</body>
</html>


