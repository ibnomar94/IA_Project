<%-- 
    Document   : updatebook
    Created on : Dec 23, 2016, 12:53:54 AM
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
        <script src="jquery-1.9.1.min.js"></script>
        <title>Book edit details page</title>
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
            String isbn = request.getParameter("isbn");
            resultset = st.executeQuery("SELECT * FROM `book` WHERE `isbn` = '"+isbn+"'");
            String title = "";
            String publishingYear="" ;
            String author="" ;
            String Numofcopies="" ;
            while (resultset.next()){
             title = resultset.getString(2);
             publishingYear = resultset.getString(3);
             author = resultset.getString(4);
             //Numofcopies = resultset.getString(6);
            }
            
            %>
        
        <div style="width:500px; margin:0 auto;">
            <form action="updatabook" align="center">
                <h3 align="left">Book Details </h3>
                <label> Title: </label>  <input type="text" name="title" value="<%=title %>" required >
                        <label> Publishing Year: </label>  <input type="text" name="publishing_year" value="<%=publishingYear%>" required >
                        <label> Author Name: </label>  <input type="text" name="author_name" value="<%=author%>" required > 
                        <label> ISBN: </label>  <input type="text" name="isbn" value="<%=isbn%>" required >
                        <input type="submit" value="Update Book's details"> 
           </form>
        <button  onclick="location.href='adminprofile.jsp'" class="btn" type="submit">Home</button>
        </div>
<%           
            conn.close();
            st.close();
        %>         
    </body>
</html>
