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
        <link rel="stylesheet" type="text/css" href="bookstable.css">
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
            <input type="text" id="searchinput" onkeyup="search()" placeholder="Search for book.." title="Type in a book's title">
            <table id="bookstable" >
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

<script>
function search() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("searchinput");
  filter = input.value.toUpperCase();
  table = document.getElementById("bookstable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>        
    </body>
</html>
