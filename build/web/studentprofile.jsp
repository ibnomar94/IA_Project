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
        <link rel="stylesheet" type="text/css" href="formscss.css">
        <title><% out.print(session.getAttribute("name"));%>'s profile</title>
    </head>
    <body>
        <div>
            <h3>Hello <% out.print(session.getAttribute("name"));%> !</h3>
            <button  onclick="location.href='index.html'" class="btn" type="submit">Home</button>
        </div>
    </body>
</html>
