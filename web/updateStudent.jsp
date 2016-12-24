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
        <title>Edit User</title>
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
            String user_id=request.getParameter("id");
            resultset = st.executeQuery("SELECT * FROM `user` WHERE `id` = '"+user_id+"'");
            String userName = "";
            String password="" ;
            String is_admin="" ;
            String name = "" ;
            String email = "" ;
            while (resultset.next()){
             name = resultset.getString(2);
             userName = resultset.getString(3);
             email = resultset.getString(4);
             password = resultset.getString(5);
             is_admin = resultset.getString(6);           
            }
            
            %>
        
        <div style="width:500px; margin:0 auto;">
            <form action="updateStudent" align="center">
                <h3 align="left">Update <%=userName %>'s Details </h3>
                <input type="hidden" name="id" value="<%=user_id %>">
                <label> Name: </label>  <input type="text" name="name" value="<%=name %>" required >
                <label> User Name: </label>  <input type="text" name="userName" value="<%=userName %>" required >
                <label> Email: </label>  <input type="text" name="email" value="<%=email%>" required >
                <label> Password: </label>  <input type="password" name="password" value="<%=password%>" required > 
                <label> Administrator ? </label>  <input type="number" min ="0" max="1" name="is_admin" value="<%=is_admin%>" required >
                <input type="submit" value="Update <%=userName %>'s details"> 
           </form>
        <button  onclick="location.href='adminprofile.jsp'" class="btn" type="submit">Home</button>
        </div>
<%           
            conn.close();
            st.close();
        %>             </body>
</html>
