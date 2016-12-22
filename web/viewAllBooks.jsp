<%-- 
    Document   : viewAllBooks
    Created on : Dec 22, 2016, 12:13:38 AM
    Author     : shaf3i
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
        <title>All books Page</title>
    </head>
    <body>
        <%
            String url = "jdbc:mysql://localhost:3306/ia_library";
            String user = "root";
            String password = "";
            String line;
            Connection Con = null;
            Statement Stmt = null;
            ResultSet RS = null;

            try {
                Con = DriverManager.getConnection(url, user, password);
                Stmt = Con.createStatement();
                line = "SELECT * FROM book;";
                RS = Stmt.executeQuery(line);
            } catch (Exception cnfe) {
                System.err.println("Exception: " + cnfe);
            }
           
        %>
        <table border="1" align="center" cellpadding="20" textalign="center">
            <tr>
                <th>book title</th>
                <th>publishing_year</th>
                <th>author_name</th>
                <th>available_copies</th>
            </tr>
            <%
                while (RS.next()) { 
            %>
            <tr>
                <td><%=RS.getString("title")%></td>
                <td><%=RS.getString("publishing_year")%></td>
                <td><%=RS.getString("author_name")%></td>
                <td><%=RS.getString("available_copies")%></td>
            </tr>

            <% }
            %>
        </table>
    </body>
</html>
