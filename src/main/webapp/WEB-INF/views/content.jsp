<%@ page import="com.example.demo.Entity.Topic" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 15-09-2024
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Content</title>
    <style>
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
            padding-top: 4px;padding-bottom: 4px;
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
        .rating-form h2 {
            text-align: center;
        }
        .rating-form label {

            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        .rating-form input[type="text"],
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
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
            border: none;
            padding: 10px;
            width: calc(100% - 16px);
        }
        .rating-form input[type="submit"]:hover {
            background-color: #0056b3;
        }
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

</body>
</html>
