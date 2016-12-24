<%-- 
    Document   : showmail
    Created on : Dec 24, 2016, 9:53:42 PM
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
        <title>mail showing Page</title>
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
            ResultSet rs ;
            String id = (String) session.getAttribute("id");
            rs = st.executeQuery("SELECT * FROM `messaging` JOIN user ON messaging.sender_id=user.id and  reciever_id = '"+id+"' ");            
            %>
        <div>
            <h4> Inbox</h4>
            <%if(!rs.isBeforeFirst()) {
                %>
                <font color="red"> <b><h4> Your Inbox is empty </h4></b> </font>
                <%
            }
                %>
            <%while(rs.next()){ %>
            From : <b> <% out.print(rs.getString(7)); %> </b> <br>
            Subject : <b> <% out.print(rs.getString(4)); %> </b> <br>
            -------------------------------
            <p> <b>Body :</b> <% out.print(rs.getString(5)); %> </p><br>
            ===========================================
                                          <%}%> 
            
        </div>
                                          
                                          
        <%           
            conn.close();
            st.close();
        %>     
    </body>
</html>
