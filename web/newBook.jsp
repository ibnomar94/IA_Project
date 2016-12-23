<%-- 
    Document   : newBook
    Created on : Dec 22, 2016, 2:33:57 AM
    Author     : shaf3i
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>create new book</title>
        <link rel="stylesheet" type="text/css" href="formscss.css">
    </head>
    <body>
        <div style="width:500px; margin:0 auto;">
            <form action="addbook" align="center">
                <h3 align="left">Book Details </h3>
                        <label> Title: </label>  <input type="text" name="title" required >
                        <label> Publishing Year: </label>  <input type="text" name="publishing_year" required >
                        <label> Author Name: </label>  <input type="text" name="author_name" required > 
                        <label> ISBN: </label>  <input type="text" name="isbn" required >
                        <label> Number of Copies </label>  <input type="text" name="available_copies" required >
                        <input type="submit" value="Add Book"> 
           </form>
        </div>
    </body>
</html>
