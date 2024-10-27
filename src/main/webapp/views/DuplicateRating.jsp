<%@ page import="com.example.demo.Entity.Topic" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Content</title>
    <style>
        /* General Styles */
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
            padding-top: 4px;
            padding-bottom: 4px;
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

        .rating-form h2 {
            text-align: center;
        }
        .rating-form label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        .rating-form input[type="text"],
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
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .rating-form input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .none {
            display: none;
        }
    </style>

</head>
<body>
<script>
    alert("Already Rated ");
</script>
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


</body>
</html>
