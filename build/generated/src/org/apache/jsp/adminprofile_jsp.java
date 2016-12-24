package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public final class adminprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"formscss.css\">\n");
      out.write("        <title>");
 out.print(session.getAttribute("name"));
      out.write("'s profile</title>\n");
      out.write("        <script src=\"jquery-1.9.1.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("\n");
      out.write("$(function() { \n");
      out.write("    $(\"#newbook\").click(function(){ \n");
      out.write("        $(\"#newbooksdiv\").toggle().load(\"newBook.jsp\");\n");
      out.write("        $(\"#editbook\").hide();\n");
      out.write("        $(\"#allbooksdiv\").hide();\n");
      out.write("        $(\"#emaildiv\").hide();\n");
      out.write("        $(\"#updateuserdiv\").hide();\n");
      out.write("    }); \n");
      out.write("});\n");
      out.write("\n");
      out.write("$(function() { \n");
      out.write("    $(\"#edit\").click(function(){ \n");
      out.write("        $(\"#editbook\").toggle();\n");
      out.write("        $(\"#newbooksdiv\").hide();\n");
      out.write("        $(\"#allbooksdiv\").hide();\n");
      out.write("        $(\"#emaildiv\").hide();\n");
      out.write("        $(\"#updateuserdiv\").hide();\n");
      out.write("    }); \n");
      out.write("});\n");
      out.write("\n");
      out.write("$(function() { // when DOM is ready\n");
      out.write("    $(\"#allbooks\").click(function(){ \n");
      out.write("        $(\"#allbooksdiv\").toggle().load(\"allbooks.jsp\");  \n");
      out.write("        $(\"#editbook\").hide();\n");
      out.write("        $(\"#newbooksdiv\").hide();\n");
      out.write("        $(\"#emaildiv\").hide();\n");
      out.write("        $(\"#updateuserdiv\").hide();\n");
      out.write("    }); \n");
      out.write("});\n");
      out.write("\n");
      out.write("$(function() { \n");
      out.write("    $(\"#emailbtn\").click(function(){ \n");
      out.write("        $(\"#emaildiv\").toggle().load(\"email.jsp\");\n");
      out.write("        $(\"#editbook\").hide();\n");
      out.write("        $(\"#allbooksdiv\").hide();\n");
      out.write("        $(\"#newbooksdiv\").hide();\n");
      out.write("        $(\"#updateuserdiv\").hide();\n");
      out.write("    }); \n");
      out.write("});\n");
      out.write("\n");
      out.write("$(function() { \n");
      out.write("    $(\"#updateuser\").click(function(){ \n");
      out.write("        $(\"#updateuserdiv\").toggle();\n");
      out.write("        $(\"#editbook\").hide();\n");
      out.write("        $(\"#allbooksdiv\").hide();\n");
      out.write("        $(\"#newbooksdiv\").hide();\n");
      out.write("        $(\"#emaildiv\").hide();\n");
      out.write("    }); \n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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
            
      out.write("\n");
      out.write("        <div style=\"width:800px; margin:0 auto;\">\n");
      out.write("            <h1>Hello ");
 out.print(session.getAttribute("name"));
      out.write("!</h1>\n");
      out.write("            <button  onclick=\"location.href='logout'\" class=\"btn\" type=\"submit\">Logout</button>\n");
      out.write("            <button  id=\"newbook\">New Book</button>\n");
      out.write("            <button  id=\"edit\">Edit book</button>\n");
      out.write("            <button  id=\"allbooks\" >Show all Books</button>\n");
      out.write("            <button  id=\"emailbtn\" >Send Email </button>\n");
      out.write("            <button  id=\"updateuser\" >Update a User</button>\n");
      out.write("            \n");
      out.write("            <div style=\"display: none;\" id=\"editbook\"> \n");
      out.write("                <form action=\"updatebook.jsp\">\n");
      out.write("                    <b>Enter book's ISBN:</b><input name =\"isbn\" list=\"browsers\">\n");
      out.write("                        <datalist id=\"browsers\" >\n");
      out.write("                                 ");
while(rs.next()){ 
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1));
      out.write("</option>\n");
      out.write("                                          ");
}
      out.write("           \n");
      out.write("                        </datalist>\n");
      out.write("                            <input type=\"submit\" value=\"Edit Details\">\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("                        \n");
      out.write("            <div style=\"display: none;\" id=\"updateuserdiv\"> \n");
      out.write("                <form action=\"updateStudent.jsp\">\n");
      out.write("                    <b>Enter users's ID</b><input name =\"id\" list=\"browsers3\">\n");
      out.write("                        <datalist id=\"browsers3\" >\n");
      out.write("                                 ");
while(rs2.next()){ 
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print(rs2.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs2.getString(1));
      out.write("</option>\n");
      out.write("                                          ");
}
      out.write("           \n");
      out.write("                        </datalist>\n");
      out.write("                            <input type=\"submit\" value=\"Edit Details\">\n");
      out.write("                </form>\n");
      out.write("            </div>            \n");
      out.write("                        \n");
      out.write("        <div id=\"allbooksdiv\"></div>\n");
      out.write("        <div style=\"width:700px; margin:0 auto;\" id=\"emaildiv\"></div> \n");
      out.write("        </div>\n");
      out.write("            <div style=\"width:800px; margin:0 auto;\" id=\"newbooksdiv\"> </div>\n");
      out.write("            \n");
      out.write(" ");
           
            conn.close();
            st.close();
            st2.close();
        
      out.write("           \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
