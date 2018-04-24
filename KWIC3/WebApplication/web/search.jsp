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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form name="searchForm" action="SearchResults" method="POST">
            Input your search terms here.
            <input type="text" name="textSearch" value="" />
            <input type="submit" value="submit" name="submit" />
        </form>
        Your out put will display here:
        <textarea name="output" rows="13" cols="20">
        ${results}
        </textarea>
    </body>
</html>
