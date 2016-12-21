<%-- 
    Document   : adminprofile
    Created on : Dec 21, 2016, 11:55:52 PM
    Author     : ibnomar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="formscss.css">
        <title><% out.print(session.getAttribute("name"));%>'s profile</title>
    </head>
    <body>
        <h1>Hello <% out.print(session.getAttribute("name"));%>!</h1>
        <div class="footer"><button  onclick="location.href='index.html'" class="btn" type="submit">Home</button></div>
    </body>
</html>
