<%--
  Created by IntelliJ IDEA.
  User: shova
  Date: 28/06/2024
  Time: 9:38 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ include file="nav.jsp" %>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Selection</title>
    <style>
        /* Styles for checkbox form */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
        }

        .container {
            display: flex;
            justify-content: space-between;
            max-width: 1200px;
            margin: 0 auto;
            padding-top: 100px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
        }

        fieldset {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 20px;
            width: 30%;
        }

        legend {
            font-size: 1.2em;
            font-weight: bold;
        }

        h2 {
            margin-top: 10px;
            margin-bottom: 5px;
        }

        input[type="checkbox"] {
            margin-right: 10px;
            margin-bottom: 5px;
        }

        label {
            display: inline-block;
            margin-bottom: 5px;
            cursor: pointer;
        }

        input[type="submit"] {
            background-color: dodgerblue;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: midnightblue;
        }

        input[type="submit"]:active {
            background-color: steelblue;
        }
    </style>
</head>
<body>
<div class="container">
    <form method="post" action="setMenuServlet">
        <p>Select menu for event</p>
        <div style="display: flex; justify-content: space-between;">
            <fieldset>
                <legend>Food Selection</legend>

                <h2>Breakfast</h2>
                <input type="checkbox" id="breakfast1" name="breakfast" value="Pancakes">
                <label for="breakfast1">Pancakes</label><br>
                <input type="checkbox" id="breakfast2" name="breakfast" value="Eggs">
                <label for="breakfast2">Eggs</label><br>
                <input type="checkbox" id="breakfast3" name="breakfast" value="Bacon">
                <label for="breakfast3">Bacon</label><br>
                <input type="checkbox" id="breakfast4" name="breakfast" value="Oatmeal">
                <label for="breakfast4">Oatmeal</label><br>
            </fieldset>

            <fieldset>
                <legend>Food Selection</legend>

                <h2>Lunch</h2>
                <input type="checkbox" id="lunch1" name="lunch" value="Salad">
                <label for="lunch1">Salad</label><br>
                <input type="checkbox" id="lunch2" name="lunch" value="Sandwich">
                <label for="lunch2">Sandwich</label><br>
                <input type="checkbox" id="lunch3" name="lunch" value="Soup">
                <label for="lunch3">Soup</label><br>
                <input type="checkbox" id="lunch4" name="lunch" value="Burger">
                <label for="lunch4">Burger</label><br>
            </fieldset>

            <fieldset>
                <legend>Food Selection</legend>

                <h2>Dinner</h2>
                <input type="checkbox" id="dinner1" name="dinner" value="Steak">
                <label for="dinner1">Steak</label><br>
                <input type="checkbox" id="dinner2" name="dinner" value="Pizza">
                <label for="dinner2">Pizza</label><br>
                <input type="checkbox" id="dinner3" name="dinner" value="Pasta">
                <label for="dinner3">Pasta</label><br>
                <input type="checkbox" id="dinner4" name="dinner" value="Fish">
                <label for="dinner4">Fish</label><br>
            </fieldset>
        </div>
        <br>
        <input type="submit" value="Submit Selection">
    </form>
</div>
</body>
</html>
