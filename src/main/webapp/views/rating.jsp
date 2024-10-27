<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rate your experience</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .none {
            display: none;
        }

        /* Style for the star rating */
        .star-rating {
            display: flex;
            justify-content: center;
            direction: rtl; /* This makes sure the highest value is first */
            font-size: 2rem;
            margin: 0;
        }

        .star-rating input[type="radio"] {
            display: none;
        }

        .star-rating label {
            color: #ddd;
            cursor: pointer;
            transition: color 0.2s ease-in-out;
        }

        .star-rating input[type="radio"]:checked ~ label {
            color: gold;
        }

        .star-rating label:hover,
        .star-rating label:hover ~ label {
            color: gold;
        }

        /* Submit button styling */
        .submit-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #45a049;
        }

        /* Center the rating system on the page */
        .rating-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height for vertical centering */
            text-align: center;
        }
    </style>
</head>
<body>
<div class="rating-container">
    <h2 class="mb-4">Rate your experience</h2>
    <%
        String userEmail = (String) request.getAttribute("userEmail");
        Long topicId = (Long) request.getAttribute("topicId");
        int teacherId = (int) request.getAttribute("teacherId");
    %>
    <form action="rating" method="post">
        <input class="none" name="topicId" value="<%= topicId %>">
        <input class="none" name="userEmail" value="<%= userEmail %>">
        <input class="none" name="teacherId" value="<%= teacherId %>">

        <!-- Star Rating System -->
        <div class="star-rating">
            <input type="radio" id="5-stars" name="rating" value="5" required>
            <label for="5-stars">★</label>

            <input type="radio" id="4-stars" name="rating" value="4">
            <label for="4-stars">★</label>

            <input type="radio" id="3-stars" name="rating" value="3">
            <label for="3-stars">★</label>

            <input type="radio" id="2-stars" name="rating" value="2">
            <label for="2-stars">★</label>

            <input type="radio" id="1-star" name="rating" value="1">
            <label for="1-star">★</label>
        </div>

        <br><br>
        <input type="submit" class="submit-btn" value="Submit">
    </form>
</div>

<!-- Bootstrap JS and dependencies (Optional for Bootstrap features) -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>
