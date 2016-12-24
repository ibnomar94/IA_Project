package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class showmail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>mail showing Page</title>\n");
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
            ResultSet rs ;
            String id = (String) session.getAttribute("id");
            rs = st.executeQuery("SELECT * FROM `messaging` JOIN user ON messaging.sender_id=user.id and  reciever_id = '"+id+"' ");            
            
      out.write("\n");
      out.write("        <div>\n");
      out.write("            <h4> Inbox</h4>\n");
      out.write("            ");
if(!rs.isBeforeFirst()) {
                
      out.write("\n");
      out.write("                <font color=\"red\"> <b><h4> Your Inbox is empty </h4></b> </font>\n");
      out.write("                ");

            }
                
      out.write("\n");
      out.write("            ");
while(rs.next()){ 
      out.write("\n");
      out.write("            From : <b> ");
 out.print(rs.getString(7)); 
      out.write(" </b> <br>\n");
      out.write("            Subject : <b> ");
 out.print(rs.getString(4)); 
      out.write(" </b> <br>\n");
      out.write("            -------------------------------\n");
      out.write("            <p> <b>Body :</b> ");
 out.print(rs.getString(5)); 
      out.write(" </p><br>\n");
      out.write("            ===========================================\n");
      out.write("                                          ");
}
      out.write(" \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("                                          \n");
      out.write("                                          \n");
      out.write("        ");
           
            conn.close();
            st.close();
        
      out.write("     \n");
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
