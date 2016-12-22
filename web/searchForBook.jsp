<%-- 
    Document   : searchForBook
    Created on : Dec 22, 2016, 6:28:00 PM
    Author     : shaf3i
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search For Book</title>
        <link rel="stylesheet" type="text/css" href="formscss.css">             
    </head>
    <body>
        <div class="container" align="center">
            
            <h1>Hello <% out.print(session.getAttribute("name"));%> !</h1>
            <b><p>Please choose a desired action to do</p></b>
            
            <form action="searchByIsbn.jsp">
                <input type="text" name="isbn">
                <input type="submit" value="search by isbn" name="btn" />
            </form>
            <form action="searchByTitle.jsp">
                <input type="text" name="title">
                <input type="submit" value="search by title" name="btn" />
            </form>
            <form action="searchByAuther.jsp">
                <input type="text" name="author_name">
                <input type="submit" value="search by auhtor" name="btn" />
            </form>
             <form action="searchByYear.jsp">
                <input type="text" name="publishing_year">
                <input type="submit" value="search by Year" name="btn" />
            </form>
            
        </div>
    </body>
</html>
