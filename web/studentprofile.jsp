<%-- 
    Document   : studentprofile
    Created on : Dec 21, 2016, 11:07:25 PM
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
        <script src="jquery-1.9.1.min.js"></script>
<script>
$(document).ready(function(){
    $("#show").click(function(){
        $("#content").toggle();
        $("#content2").hide();
        $("#allbooksdiv").hide();
    });
});

$(document).ready(function(){
    $("#show2").click(function(){
        $("#content2").toggle();
        $("#content").hide();
        $("#allbooksdiv").hide();
        
    });
});

$(function() { // when DOM is ready
    $("#allbooks").click(function(){ 
        $("#allbooksdiv").toggle().load("allbooks.jsp");
        $("#content2").hide();
        $("#content").hide();
        
        
    }); 
});
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="formscss.css">
        <title><% out.print(session.getAttribute("name"));%>'s profile</title>
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
            Statement st2 = conn.createStatement();
            ResultSet rs ;
            ResultSet rs2 ;
            rs = st.executeQuery("SELECT * FROM `book` WHERE `available_copies` >0");
            String id= session.getAttribute("id").toString();
            rs2 = st2.executeQuery("SELECT * FROM `book_copy` JOIN book on book_copy.book_id = book.id and book_copy.borrower_id= '"+id+"'");
            
            %>
        <div style="width:800px; margin:0 auto;">
            <h3>Hello <% out.print(session.getAttribute("name"));%> !</h3>
            <b><p>Please choose a desired action to do</p></b>
            
            <button  onclick="location.href='index.html'" class="btn" type="submit">Logout</button>
            <button   id="show" >Borrow Book</button>
            <button   id="show2" >return Book</button>
            <button   id="allbooks" >Show all Books</button>
            
            <div style = "display: none;" id="content">
                <form action="borrowbook">
            Choose a book to borrow  : <select name ="book">
            <%while(rs.next()){ %>
            <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
                            <%}%>           
                            </select>
                            <input type="submit" value="Borrow">
              </form>
             </div>
                            
            
            <div style = "display: none;" id="content2">
                <form action="borrowbook">
            Choose a book to return  : <select name ="book">
            <%while(rs2.next()){ %>
            <option value="<%=rs2.getString(8)%>"><%=rs2.getString(8)%></option>
                            <%}%>           
                            </select>
                            <input type="submit" value="return">
              </form>
             </div>
        <div id="allbooksdiv"></div>
        </div>
                            
        <%           
            conn.close();
            st.close();
            st2.close();
        %>        

    </body>
</html>
