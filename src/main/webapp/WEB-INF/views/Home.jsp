
<%@ page import="com.example.demo.Entity.Navigate" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
<%--    <link rel="stylesheet" type="text/css" href="Home.css">--%>
    <style>
        body {
            background-color: rgb(7, 7, 7);
            color: #e8e9ea;
        }
        h1 {
            text-align: center;
        }
        .search-container {
            margin-top: 7vw;
            display: flex;
            align-items: center;
        }
        .search-input {
            padding: 8px;
            border: none;
            border-radius: 4px 0 0 4px;
            font-size: 18px;
            flex: 1;
            text-align: center;
        }

        .search-button {
            font-size: 18px;
            padding: 8px 16px;
            border: 1px solid #ccc;
            border-radius: 0 4px 4px 0;
            background-color: #f8f9fa;
            cursor: pointer;
            border: none;
        }
        .search-button:hover {
            background-color: #e8e9ea;
        }
        .container {
            display: block;
        }
        .item {
            background-color: rgb(48, 47, 47);
            text-align: center;
            padding: 1vh;
            border: 1px solid #242222;
            margin: 5px;
        }

        .item:hover {
            background-color: rgb(28, 27, 27);
        }

        @media screen and (min-width:750px) {

            .search-input {
                margin-left: 10vw;
            }

            .search-button {
                margin-right: 10vw;
            }

            .item {
                margin-left: 10vw;
                margin-right: 10vw;
            }

        }

        li {
            text-decoration: none;
        }

        #searchResults {
            background-color: rgb(48, 47, 47);
            text-align: center;
            padding: 20px;
            border: 1px solid #ddd;
            margin: 5px;
        }

        #searchResults:hover {
            background-color: rgb(28, 27, 27);
        }
        .container1 {
            background-color: aqua;
        }
        .it {
            display: none;
        }

        button#item {
            font-size: 16px;
            background-color: #373333;
            color: #e8e9ea;
        }

        button#item:hover {
            background-color: rgb(28, 27, 27);
            cursor: pointer;
        }

        .hidden {
            margin-left: 10vw;
            margin-right: 10vw;
            padding: 1vw;
            width: 78vw;
        }

        #item1 {
            margin-left: 10vw;
            margin-right: 10vw;
            padding: 1vw;
            display: none;
            grid-template-columns: 1fr 1fr;
        }
        .item{
            margin-left: 10vw;
            margin-right: 10vw;
            padding: 1vw;
            display: grid;
            grid-template-columns: 1fr ;
        }

        a {
            margin-top: 15px;
            text-decoration: none;
            color: #e8e9ea;
        }

    </style>
</head>
<body>
<%
    // Get allRecord attribute from the request
    List<Navigate> allData = (List<Navigate>) request.getAttribute("allRecord");
%>
<h1>Learn With Us</h1>

<!-- Search form that submits a search request -->
<form action="search1" method="get">
    <div class="search-container">
        <input type="text" class="search-input" placeholder="Search..." name="search">
        <button type="submit" class="search-button">Search</button>
    </div>
</form>

<br><br><br><br><br>

<!-- Display list of navigates with a form for each one -->
<% if (allData != null) {
    for (Navigate i : allData) {  %>
<div class="container">
    <!-- Form that posts to the search endpoint -->
    <form action="search" method="post">
        <button id="item" class="hidden" value="<%=i.getId()%>" name="id">
            <%=i.getTopic()%>
        </button>
    </form>
</div>
<%   }
} else { %>
<p>No records found.</p>
<% } %>

</body>
</html>
