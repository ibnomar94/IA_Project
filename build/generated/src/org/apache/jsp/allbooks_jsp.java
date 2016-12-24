package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class allbooks_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"bookstable.css\">\n");
      out.write("        <title>All Books Page</title>\n");
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
            ResultSet resultset ;
            resultset = st.executeQuery("SELECT * FROM `book` WHERE `available_copies` >0");            
            
      out.write("\n");
      out.write("            <div style=\"width:150%; margin:0 auto;\" >\n");
      out.write("            <h4>Available books</h4>\n");
      out.write("            <input type=\"text\" id=\"searchinput\" onkeyup=\"search()\" placeholder=\"Search for book..\" title=\"Type in a book's title\">\n");
      out.write("            <table id=\"bookstable\" >\n");
      out.write("                <thead>\n");
      out.write("                <th>Title</th>\n");
      out.write("                <th>Publishing Year</th>\n");
      out.write("                <th>Author Name</th>\n");
      out.write("                <th>ISBN</th>\n");
      out.write("                <th>Available Copies</th>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    ");
 while(resultset.next()){ 
      out.write("\n");
      out.write("            <TR>\n");
      out.write("                <TD align='center'> ");
      out.print( resultset.getString(2) );
      out.write("</TD>\n");
      out.write("                <TD align='center'> ");
      out.print( resultset.getString(3) );
      out.write("</TD>\n");
      out.write("                <TD align='center'> ");
      out.print( resultset.getString(4) );
      out.write("</TD>\n");
      out.write("                <TD align='center'> ");
      out.print( resultset.getString(5) );
      out.write("</TD>\n");
      out.write("                <TD align='center'> ");
      out.print( resultset.getString(6) );
      out.write("</TD>\n");
      out.write("            </TR>\n");
      out.write("            ");
 } 
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            </div>\n");
           
            conn.close();
            st.close();
        
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function search() {\n");
      out.write("  var input, filter, table, tr, td, i;\n");
      out.write("  input = document.getElementById(\"searchinput\");\n");
      out.write("  filter = input.value.toUpperCase();\n");
      out.write("  table = document.getElementById(\"bookstable\");\n");
      out.write("  tr = table.getElementsByTagName(\"tr\");\n");
      out.write("  for (i = 0; i < tr.length; i++) {\n");
      out.write("    td = tr[i].getElementsByTagName(\"td\")[0];\n");
      out.write("    if (td) {\n");
      out.write("      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {\n");
      out.write("        tr[i].style.display = \"\";\n");
      out.write("      } else {\n");
      out.write("        tr[i].style.display = \"none\";\n");
      out.write("      }\n");
      out.write("    }       \n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</script>        \n");
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
