<%-- 
    Document   : search
    Created on : Apr 23, 2018, 9:48:40 AM
    Author     : CameronLlewellyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.0/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-0SEzCkemOL0R1IOfjiayiYyt8BkqxwlmXBmFWMUNeG0BSo/XUh4xAF5ybf+Qr/4x" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">KWIC Search</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Add to Database </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="search.jsp">Search <span class="sr-only">(current)</span></a>
      </li>
    </ul>
  </div>
</nav>
    <body>
      <div class="jumbotron container">
        <form name="searchForm" action="SearchResults" method="POST">
            <div class="form-group">
            <label for="exampleTextarea">Enter Search terms here.</label>
            <textarea class="form-control" id="exampleTextarea" name="textSearch" rows="3"></textarea>
            </div>
            <input type="submit" value="submit" name="submit" />
        </form>
          <form>
          <div class="form-group">
            <label for="exampleTextarea">Your results will display here.</label>
            <textarea class="form-control" id="exampleTextarea" name="textSearch" rows="3">
                ${results}
            </textarea>
            </div>
      </div>
    </body>
</html>
