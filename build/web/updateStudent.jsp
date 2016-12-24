<%-- 
    Document   : updateStudent
    Created on : Dec 24, 2016, 7:58:26 PM
    Author     : shaf3i
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="formscss.css">
        <script src="jquery-1.9.1.min.js"></script>
        <title>student edit details page</title>
    </head>
    <body>
        <%
            String username = "root";
            String pass = "";
            String JDBC_DRIVER="com.mysql.jdbc.Driver";  
            String DB_URL="jdbc:mysql://localhost/Ia_library";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, username, pass);
            Statement st = conn.createStatement();           
            ResultSet resultset ;
            //String email = request.getParameter("email");
            String email="me@me";
            resultset = st.executeQuery("SELECT * FROM `user` WHERE `email` = '"+email+"'");
            String id = "";
            String userName = "";
            String password="" ;
            String is_admin="" ;
            while (resultset.next()){
             id =resultset.getString(1);
             userName = resultset.getString(3);
             password = resultset.getString(5);
             is_admin = resultset.getString(6);
             //Numofcopies = resultset.getString(6);
            }
            
            %>
        
        <div style="width:500px; margin:0 auto;">
            <form action="updateStudent" align="center">
                <h3 align="left">user <%=userName %>'s Details </h3>
                <label> ID: </label>  <input type="text" name="id" value="<%=id %>" required >
                <label> UserName: </label>  <input type="text" name="userName" value="<%=userName %>" required >
                <label> email: </label>  <input type="text" name="email" value="<%=email%>" required >
                <label> password: </label>  <input type="password" name="password" value="<%=password%>" required > 
                <label> is_admin: </label>  <input type="text" name="is_admin" value="<%=is_admin%>" required >
                <input type="submit" value="Update <%=userName %>'s details"> 
           </form>
        <button  onclick="location.href='adminprofile.jsp'" class="btn" type="submit">Home</button>
        </div>
<%           
            conn.close();
            st.close();
        %>             </body>
</html>
