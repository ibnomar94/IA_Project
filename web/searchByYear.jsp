<%-- 
    Document   : searchByIsbn
    Created on : Dec 22, 2016, 8:25:18 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
        <%
            String url = "jdbc:mysql://localhost:3306/ia_library";
            String user = "root";
            String password = "";
            String line;
            Connection Con = null;
            Statement Stmt = null;
            ResultSet RS = null;
            String publishing_year = request.getParameter("publishing_year");

            try {
                Con = DriverManager.getConnection(url, user, password);
                Stmt = Con.createStatement();
                line = "SELECT * FROM book where publishing_year='"+publishing_year+"';";
                RS = Stmt.executeQuery(line);
            } catch (Exception cnfe) {
                System.err.println("Exception: " + cnfe);
            }
           
        %>
        <table border="1" cellpadding="20" textalign="center">
            <tr>
                <th>publishing_year</th>
                <th>book title</th>
                <th>author_name</th>
                <th>available_copies</th>
                <th>ISBN</th>
            </tr>
            <%
                while (RS.next()) { 
            %>
            <tr>
                <td><%=RS.getString("publishing_year")%></td>
                <td><%=RS.getString("title")%></td>
                <td><%=RS.getString("author_name")%></td>
                <td><%=RS.getString("available_copies")%></td>
                <td><%=RS.getString("isbn")%></td> 
            </tr>

            <% }
            %>
        </table>
        <form action="searchForBook.jsp">
                <input type="submit" value="back to search" name="btn" />
        </form>
        </div>
    </body>
</html>
