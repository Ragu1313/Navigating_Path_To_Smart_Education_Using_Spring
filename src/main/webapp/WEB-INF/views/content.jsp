<%@ page import="com.example.demo.Entity.Topic" %>
<<<<<<< HEAD
<%@ page import="java.util.List" %>
=======
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 15-09-2024
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
>>>>>>> 3f0418a43198de13075de5d6ba9aceca54df320b
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Content</title>
    <style>
<<<<<<< HEAD
        /* General Styles */
=======
>>>>>>> 3f0418a43198de13075de5d6ba9aceca54df320b
        a{
            text-decoration: none;
        }
        h1{
            text-align: center;
        }
        table{
            border-collapse: separate;
            border-spacing: 0;
        }
        tr{
            display: block;
            margin-bottom: 5px;
        }
        .box{
            margin-top: 8vh;
            margin-left: 10vw;
            margin-right: 10vw;
        }
        body{
            background-color: rgb(7, 7, 7);
            color: #e8e9ea;
        }
        .tname{
            text-align: center;
            width: 40vw;padding-top: 10px;padding-bottom: 10px;
            background-color: rgb(48, 47, 47);
        }
        .value{
            text-align: center;
            padding: 4px;
            width: 20vw;
            background-color: rgb(48, 47, 47);
            padding-top: 4px;padding-bottom: 4px;

        }
        .tname:hover{
            background-color: rgb(28, 27, 27);
        }
        .value:hover{
            background-color: rgb(28, 27, 27);
        }
        .link{
            text-decoration: none;
            text-align: center;
            padding: 4px;
            width: 20vw;
            background-color: rgb(48, 47, 47);
<<<<<<< HEAD
            padding-top: 4px;
            padding-bottom: 4px;
=======
            padding-top: 4px;padding-bottom: 4px;
>>>>>>> 3f0418a43198de13075de5d6ba9aceca54df320b
        }
        .link:hover{
            background-color: rgb(28, 27, 27);
        }

        button{
            /* border-radius: 5px; */
            color: aliceblue;
            background-color: #007bff;
            padding: 8px;
        }
<<<<<<< HEAD

=======
        .rating-form {
            margin-top:35vh;
            margin-bottom:10vh;
            margin-right:30vw;
            margin-left:35vw;
            max-width: 400px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
>>>>>>> 3f0418a43198de13075de5d6ba9aceca54df320b
        .rating-form h2 {
            text-align: center;
        }
        .rating-form label {
<<<<<<< HEAD
=======

>>>>>>> 3f0418a43198de13075de5d6ba9aceca54df320b
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        .rating-form input[type="text"],
<<<<<<< HEAD
        .rating-form select {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #000000;
            border-radius: 5px;
        }
        .rating-form input[type="number"]{
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            margin-right: 10px;
            border: 1px solid #000000;
            border-radius: 5px;
        }
        .rating-form input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
=======
        .rating-form input[type="number"],
        .rating-form select,
        .rating-form input[type="submit"] {
            width: calc(100% - 16px);
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .rating-form input[type="submit"] {
>>>>>>> 3f0418a43198de13075de5d6ba9aceca54df320b
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
<<<<<<< HEAD
=======
            border: none;
            padding: 10px;
            width: calc(100% - 16px);
>>>>>>> 3f0418a43198de13075de5d6ba9aceca54df320b
        }
        .rating-form input[type="submit"]:hover {
            background-color: #0056b3;
        }
<<<<<<< HEAD
        .none {
            display: none;
        }
    </style>

</head>
<body>

<h1>Learn With Us</h1>
<table class="box">
    <tr>
        <td class="tname">Teacher Name</td>
        <td class="value">Teacher Rating</td>
        <td class="link">Link</td>
        <td class="link">Your Rating</td>
    </tr>
    <%
        @SuppressWarnings("")
        List<Topic> topic = (List<Topic>) request.getAttribute("topic");
        String userEmail = (String) request.getAttribute("userEmail");
        for (Topic i : topic) {
    %>
    <form method="post" action="gettingRating">
        <tr>
            <td class="tname" name="tname"><%= i.getTeacherName() %></td>
            <td class="value" name="value"><%= String.format("%.1f", i.getTeacherRating()) %></td>
            <td class="link"><a href="<%= i.getLink() %>">Click here</a></td>
            <td class="link">
                <!-- Button to trigger modal popup -->
                <input name="topicId" value="<%= i.getTopicId() %>" class="none">
                <input class="none" name="userEmail" value="<%= userEmail %>" >
                <input class="none" name="teacherId"  id="rating"  value="<%=i.getTeacherId()%>">
                <input type="submit" value="Rate here">
            </td>
        </tr>
    </form>
    <% } %>
</table>

=======
        .hide{
            display: none;
        }
        p{
            text-align:center;
            font-size:20px;
        }
    </style>
</head>
<body>
<h1>Learn With Us</h1>
<table class="box">
    <tr><td class="tname">TeacherName</td> <td class="value">Teacher Rating</td><td class="link">Link</td> </tr>
    <%
        @SuppressWarnings("")
        List<Topic> topic = (List<Topic>)request.getAttribute("topic");
        for(Topic i:topic){
    %>
    <tr>
        <td class="tname"><%= i.getTeacherName() %></td>
        <td class="value"><%=i.getTeacherRating()%></td>
        <td class="link"><a href="<%=  i.getLink()  %>" >click here</a></td>
    </tr>
<%--    <h1>Hi</h1>--%>
    <%  } %>
</table>
    <br><br>
    <br><br><br><br>
    <p>
        Rate The Teacher &darr; </p>

<form action="rating" method="post" class="rating-form">
    <h2>Select the teacher to rate</h2>
    <select id="teacher" name="teacherId" required>
        <option value=""> -- Select -- </option>
        <% for (Topic i : topic) { %>
        <option value="<%= i.getTeacherId() %>"><%= i.getTeacherName() %></option>
        <input name="topicId" value="<%= i.getTopicId() %>" class="hide">
        <% } %>
    </select>
    <br>
    <label for="rating">Your Rating (1 to 5):</label>
    <input type="number" id="rating" name="rating" min="1" max="5">
    <input type="submit" value="Submit">
</form>
>>>>>>> 3f0418a43198de13075de5d6ba9aceca54df320b

</body>
</html>
