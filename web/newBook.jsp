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
        <div>
            <form action="addNewBookServelt" align="center">
                        <label> title: </label>  <input type="text" name="title" required >
                        <label> publishing_year: </label>  <input type="text" name="publishing_year" required >
                        <label> author_name: </label>  <input type="text" name="author_name" required > 
                        <label> isbn: </label>  <input type="text" name="isbn" required >
                        <label> available_copies </label>  <input type="text" name="available_copies" required >
                        <label> added_by </label>  <input type="text" name="added_by" required >
                        <input type="submit" value="Add Book"> 
           </form>
        </div>
    </body>
</html>
