package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class studentprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <script src=\"jquery-1.9.1.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("    $(\"#show\").click(function(){\n");
      out.write("        $(\"#content\").toggle();\n");
      out.write("        $(\"#content2\").hide();\n");
      out.write("        $(\"#allbooksdiv\").hide();\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("\n");
      out.write("$(document).ready(function(){\n");
      out.write("    $(\"#show2\").click(function(){\n");
      out.write("        $(\"#content2\").toggle();\n");
      out.write("        $(\"#content\").hide();\n");
      out.write("        $(\"#allbooksdiv\").hide();\n");
      out.write("        \n");
      out.write("    });\n");
      out.write("});\n");
      out.write("\n");
      out.write("$(function() { // when DOM is ready\n");
      out.write("    $(\"#allbooks\").click(function(){ \n");
      out.write("        $(\"#allbooksdiv\").toggle().load(\"allbooks.jsp\");\n");
      out.write("        $(\"#content2\").hide();\n");
      out.write("        $(\"#content\").hide();\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    }); \n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"formscss.css\">\n");
      out.write("        <title>");
 out.print(session.getAttribute("name"));
      out.write("'s profile</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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
            String id= session.getAttribute("id").toString();
            rs = st.executeQuery("SELECT DISTINCT DISTINCT * FROM book JOIN book_copy on book.id = book_copy.book_id WHERE book_copy.borrower_id != '"+id+"' and book.available_copies>0 GROUP BY book.id");
            rs2 = st2.executeQuery("SELECT DISTINCT * FROM `book_copy` JOIN book on book_copy.book_id = book.id and book_copy.borrower_id= '"+id+"' GROUP BY book.id");
            
            
      out.write("\n");
      out.write("        <div style=\"width:800px; margin:0 auto;\">\n");
      out.write("            <h3>Hello ");
 out.print(session.getAttribute("name"));
      out.write(" !</h3>\n");
      out.write("            <b><p>Please choose a desired action to do</p></b>\n");
      out.write("            \n");
      out.write("            <button  onclick=\"location.href='index.html'\" class=\"btn\" type=\"submit\">Logout</button>\n");
      out.write("            <button   id=\"show\" >Borrow Book</button>\n");
      out.write("            <button   id=\"show2\" >return Book</button>\n");
      out.write("            <button   id=\"allbooks\" >Show all Books</button>\n");
      out.write("            \n");
      out.write("            <div style = \"display: none;\" id=\"content\">\n");
      out.write("            <form action=\"borrowbook\">\n");
      out.write("              Choose a book to borrow  : \n");
      out.write("            <select name =\"book\">\n");
      out.write("                ");

                    while(rs.next())
                    {
                
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs.getString(2));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write("</option>\n");
      out.write("                ");

                    }
                
      out.write("           \n");
      out.write("            </select>\n");
      out.write("                      <input type=\"submit\" value=\"Borrow\">\n");
      out.write("              </form>\n");
      out.write("             </div>\n");
      out.write("                            \n");
      out.write("            \n");
      out.write("            <div style = \"display: none;\" id=\"content2\">\n");
      out.write("                <form action=\"returnbook\">\n");
      out.write("            Choose a book to return  : <select name =\"bookReturn\">\n");
      out.write("            ");
while(rs2.next()){ 
      out.write("\n");
      out.write("            <option value=\"");
      out.print(rs2.getString(9));
      out.write('"');
      out.write('>');
      out.print(rs2.getString(9));
      out.write("</option>\n");
      out.write("                            ");
}
      out.write("           \n");
      out.write("                            </select>\n");
      out.write("                            <input type=\"submit\" value=\"return\">\n");
      out.write("              </form>\n");
      out.write("             </div>\n");
      out.write("        <div id=\"allbooksdiv\"></div>\n");
      out.write("        </div>\n");
      out.write("                            \n");
      out.write("        ");
           
            conn.close();
            st.close();
            st2.close();
        
      out.write("        \n");
      out.write("\n");
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
