<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 27/05/2024
  Time: 6:35 pm
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hyatt Regency Gallery</title>
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
</head>
<body>

<div class="header">
    <h1>Hyatt Regency Kathmandu</h1>
</div>

<div class="gallery">
    <div class="gallery-item">
        <img src="room1.jpg" alt="Image 1">
    </div>
    <div class="gallery-item">
        <img src="room1.jpg" alt="Image 2">
    </div>
    <div class="gallery-item">
        <img src="room1.jpg" alt="Image 3">
    </div>
    <div class="gallery-item">
        <img src="room1.jpg" alt="Image 4">
    </div>
    <div class="gallery-item">
        <img src="room1.jpg" alt="Image 5">
    </div>
    <div class="gallery-item">
        <img src="room1.jpg" alt="Image 6">
    </div>
</div>

</body>
</html>

