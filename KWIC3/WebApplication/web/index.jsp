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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1><form name="toDatabase" action="SendtoDatabase" method="POST">
            Enter the data for the database:
            <textarea name="databaseIn" rows="13" cols="50">
            </textarea>
            <input type="submit" value="Submit" name="sendDatabase" />
        </form>
    </body>
</html>
