<%-- 
    Document   : welcome
    Created on : Dec 24, 2016, 9:28:43 PM
    Author     : shaf3i
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="formscss.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">          
        <title>welcome Page</title>
    </head>
    <body>
        <h2 align="center">Welcome to Library home page!</h2>
                
                <div  style="width:800px; margin:0 auto;">
                    <h3>   <b> Sign in!</b> </h3>
                    <form action="signin">
                    <label> User Name </label>  <input type="text" name="username" required > 
                    <label> Password: </label>  <input type="password" name="password" required >
                    <input type="submit" value="Login"> 
                </form>
                    
                <div>
                <button style="float: right" onclick="location.href='newuser.jsp'" class="btn" type="submit">New User</button>
                </div>
                
                </div>
    </body>
</html>
