<%-- 
    Document   : index
    Created on : Apr 23, 2018, 9:22:09 AM
    Author     : CameronLlewellyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.0/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-0SEzCkemOL0R1IOfjiayiYyt8BkqxwlmXBmFWMUNeG0BSo/XUh4xAF5ybf+Qr/4x" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Add to Database <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="search.jsp">Search</a>
      </li>
    </ul>
  </div>
</nav>
    <body>
        <div class="jumbotron container">
        <form name="toDatabase" action="SendtoDatabase" method="POST">
           <div class="form-group">
            <label for="exampleTextarea">Input data to database here</label>
            <textarea class="form-control" id="exampleTextarea" name="databaseIn" rows="3"></textarea>
            </div>

            <input type="submit" value="Submit" name="sendDatabase" />
        </form>
        </div>
    </body>
</html>
