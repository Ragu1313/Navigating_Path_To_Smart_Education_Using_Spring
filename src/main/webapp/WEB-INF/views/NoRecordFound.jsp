<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 16-09-2024
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>NoRecordFound</title>
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
    </style>
  </head>
  <body>
  <h1>Learn With Us</h1>

  <!-- Search form that submits a search request -->

  <form action="search1" method="get">
    <div class="search-container">
      <input type="text" class="search-input" placeholder="Search..." name="search">
      <button type="submit" class="search-button">Search</button>
    </div>
  </form>

  <p> Sorry , no Record Found for our searching value again click the search button on the top </p>
  </body>
</html>
