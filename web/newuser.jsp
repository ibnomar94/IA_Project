<%-- 
    Document   : newuser
    Created on : Dec 20, 2016, 12:10:23 AM
    Author     : ibnomar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New user</title>
        <link rel="stylesheet" type="text/css" href="formscss.css">

    </head>
    <body>
        <div>
        <form action="adduserservlet" align="center">
                    <label> ID: </label>  <input type="text" name="id" pattern="201.+[0-9]{8}" title="8 digits Starting with 201" required >
                    <label> Name: </label>  <input type="text" name="name" required >
                    <label> User Name: </label>  <input type="text" name="username" required > 
                    <label> Password: </label>  <input type="password" name="password" required >
                    <label> Email </label>  <input type="email" name="email" required >
                    <input type="submit" value="Add User"> 
                </form>
        </div>
    </body>
</html>
