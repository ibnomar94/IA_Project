<%-- 
    Document   : allbooks
    Created on : Dec 22, 2016, 11:58:13 PM
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
        <title>All Books Page</title>
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
            resultset = st.executeQuery("SELECT * FROM `book` WHERE `available_copies` >0");            
            %>
            <div style="width:150%; margin:0 auto;" >
            <h4>Available books</h4>
            <table >
                <thead>
                <th>Title</th>
                <th>Publishing Year</th>
                <th>Author Name</th>
                <th>ISBN</th>
                <th>Available Copies</th>
                </thead>
                <tbody>
                    <% while(resultset.next()){ %>
            <TR>
                <TD align='center'> <%= resultset.getString(2) %></TD>
                <TD align='center'> <%= resultset.getString(3) %></TD>
                <TD align='center'> <%= resultset.getString(4) %></TD>
                <TD align='center'> <%= resultset.getString(5) %></TD>
                <TD align='center'> <%= resultset.getString(6) %></TD>
            </TR>
            <% } %>
                </tbody>
            </table>
            
            </div>
<%           
            conn.close();
            st.close();
        %>        
    </body>
</html>
