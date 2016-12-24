<%-- 
    Document   : adminprofile
    Created on : Dec 21, 2016, 11:55:52 PM
    Author     : ibnomar
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="formscss.css">
        <title><% out.print(session.getAttribute("name"));%>'s profile</title>
        <script src="jquery-1.9.1.min.js"></script>
<script>

$(function() { 
    $("#newbook").click(function(){ 
        $("#newbooksdiv").toggle().load("newBook.jsp");
        $("#editbook").hide();
        $("#allbooksdiv").hide();
        $("#emaildiv").hide();
        $("#updateuserdiv").hide();
    }); 
});

$(function() { 
    $("#edit").click(function(){ 
        $("#editbook").toggle();
        $("#newbooksdiv").hide();
        $("#allbooksdiv").hide();
        $("#emaildiv").hide();
        $("#updateuserdiv").hide();
    }); 
});

$(function() { // when DOM is ready
    $("#allbooks").click(function(){ 
        $("#allbooksdiv").toggle().load("allbooks.jsp");  
        $("#editbook").hide();
        $("#newbooksdiv").hide();
        $("#emaildiv").hide();
        $("#updateuserdiv").hide();
    }); 
});

$(function() { 
    $("#emailbtn").click(function(){ 
        $("#emaildiv").toggle().load("email.jsp");
        $("#editbook").hide();
        $("#allbooksdiv").hide();
        $("#newbooksdiv").hide();
        $("#updateuserdiv").hide();
    }); 
});

$(function() { 
    $("#updateuser").click(function(){ 
        $("#updateuserdiv").toggle();
        $("#editbook").hide();
        $("#allbooksdiv").hide();
        $("#newbooksdiv").hide();
        $("#emaildiv").hide();
    }); 
});
</script>
    </head>
    <body>
        <%
            if(session.getAttribute("id") == null){
            response.sendRedirect("index.html");
            }
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
            rs = st.executeQuery("SELECT isbn FROM `book` ");
            rs2 = st2.executeQuery("SELECT * FROM `user` where `is_admin`=0  ");            
            %>
        <div style="width:800px; margin:0 auto;">
            <h1>Hello <% out.print(session.getAttribute("name"));%>!</h1>
            <button  onclick="location.href='index.html'" class="btn" type="submit">Logout</button>
            <button  id="newbook">New Book</button>
            <button  id="edit">Edit book</button>
            <button  id="allbooks" >Show all Books</button>
            <button  id="emailbtn" >Send Email </button>
            <button  id="updateuser" >Update a User</button>
            
            <div style="display: none;" id="editbook"> 
                <form action="updatebook.jsp">
                    <b>Enter book's ISBN:</b><input name ="isbn" list="browsers">
                        <datalist id="browsers" >
                                 <%while(rs.next()){ %>
                                    <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                                          <%}%>           
                        </datalist>
                            <input type="submit" value="Edit Details">
                </form>
            </div>
                        
            <div style="display: none;" id="updateuserdiv"> 
                <form action="updateStudent.jsp">
                    <b>Enter users's ID</b><input name ="id" list="browsers3">
                        <datalist id="browsers3" >
                                 <%while(rs2.next()){ %>
                                    <option value="<%=rs2.getString(1)%>"><%=rs2.getString(1)%></option>
                                          <%}%>           
                        </datalist>
                            <input type="submit" value="Edit Details">
                </form>
            </div>            
                        
        <div id="allbooksdiv"></div>
        <div style="width:700px; margin:0 auto;" id="emaildiv"></div> 
        </div>
            <div style="width:800px; margin:0 auto;" id="newbooksdiv"> </div>
            
 <%           
            conn.close();
            st.close();
            st2.close();
        %>           
    </body>
</html>
