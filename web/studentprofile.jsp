<%-- 
    Document   : studentprofile
    Created on : Dec 21, 2016, 11:07:25 PM
    Author     : ibnomar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><% out.print(session.getAttribute("name"));%>' profile</title>
    </head>
    <body>
        <h3>Hello <% out.print(session.getAttribute("name"));%> !</h3>
    </body>
</html>
