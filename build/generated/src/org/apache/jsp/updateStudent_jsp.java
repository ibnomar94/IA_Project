package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class updateStudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"formscss.css\">\n");
      out.write("        <script src=\"jquery-1.9.1.min.js\"></script>\n");
      out.write("        <title>Edit User</title>\n");
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
            //String email = request.getParameter("email");
            String user_id=request.getParameter("id");
            resultset = st.executeQuery("SELECT * FROM `user` WHERE `id` = '"+user_id+"'");
            String userName = "";
            String password="" ;
            String is_admin="" ;
            String name = "" ;
            String email = "" ;
            while (resultset.next()){
             name = resultset.getString(2);
             userName = resultset.getString(3);
             email = resultset.getString(4);
             password = resultset.getString(5);
             is_admin = resultset.getString(6);           
            }
            
            
      out.write("\n");
      out.write("        \n");
      out.write("        <div style=\"width:500px; margin:0 auto;\">\n");
      out.write("            <form action=\"updateStudent\" align=\"center\">\n");
      out.write("                <h3 align=\"left\">Update ");
      out.print(userName );
      out.write("'s Details </h3>\n");
      out.write("                <input type=\"hidden\" name=\"id\" value=\"");
      out.print(user_id );
      out.write("\">\n");
      out.write("                <label> Name: </label>  <input type=\"text\" name=\"name\" value=\"");
      out.print(name );
      out.write("\" required >\n");
      out.write("                <label> User Name: </label>  <input type=\"text\" name=\"userName\" value=\"");
      out.print(userName );
      out.write("\" required >\n");
      out.write("                <label> Email: </label>  <input type=\"text\" name=\"email\" value=\"");
      out.print(email);
      out.write("\" required >\n");
      out.write("                <label> Password: </label>  <input type=\"password\" name=\"password\" value=\"");
      out.print(password);
      out.write("\" required > \n");
      out.write("                <label> Administrator ? </label>  <input type=\"number\" min =\"0\" max=\"1\" name=\"is_admin\" value=\"");
      out.print(is_admin);
      out.write("\" required >\n");
      out.write("                <input type=\"submit\" value=\"Update ");
      out.print(userName );
      out.write("'s details\"> \n");
      out.write("           </form>\n");
      out.write("        <button  onclick=\"location.href='adminprofile.jsp'\" class=\"btn\" type=\"submit\">Home</button>\n");
      out.write("        </div>\n");
           
            conn.close();
            st.close();
        
      out.write("             </body>\n");
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
