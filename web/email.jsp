<%-- 
    Document   : email
    Created on : Dec 24, 2016, 8:14:59 PM
    Author     : ibnomar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="formscss.css">
        <title>Email Page</title>
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
            ResultSet rs5 ;
            rs5 = st.executeQuery("SELECT * FROM `user` where `is_admin`= 0 ");            
            %>
        <div>
        <h3>Send Email</h3>
        <form action="email">
           Send email To user with ID:<input type="text" name ="emailto" list="browsers2">
                        <datalist id="browsers2" >
                                 <%while(rs5.next()){ %>
                                    <option value="<%=rs5.getString(1)%>"><%=rs5.getString(1)%></option>
                                          <%}%>           
                        </datalist><br>
           Subject : <input type="text" name="subject"><br>
           Message : <textarea name="message"></textarea><br>
           <input type="hidden" name="type" value="send" >
           <input type="submit" value="Send">
        </form>
        </div>
                        
     <%           
            conn.close();
            st.close();
        %>     
    </body>
</html>
