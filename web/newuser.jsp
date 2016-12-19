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
        <title>New user Form</title>
    </head>
    <body>
        <form action="adduserservlet">
                    <label> ID: </label>  <input type="text" name="id" required >
                    <label> Name: </label>  <input type="text" name="name" required >
                    <label> User Name: </label>  <input type="text" name="username" required > <br>
                    <label> Password: </label>  <input type="password" name="password" required >
                    <label> Email </label>  <input type="email" name="email" required >
                    <input type="submit" value="Login"> 
                </form>
    </body>
</html>
