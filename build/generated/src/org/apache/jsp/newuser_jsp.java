package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newuser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add New user</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"formscss.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
            if(request.getAttribute("msg")!=null){
               
      out.write("\n");
      out.write("               <b> <p style=\"color:red;\"> ");
      out.print(request.getAttribute("msg"));
      out.write(" </p </b>\n");
      out.write("        ");

        }
      out.write("\n");
      out.write("        <h3>   <b> SignUp!</b> </h3>\n");
      out.write("        <div>\n");
      out.write("        <form action=\"adduserservlet\" align=\"center\">\n");
      out.write("                    <label> ID: </label>  <input type=\"text\" name=\"id\" pattern=\"[0-9]{8}\" title=\"8 digits Starting with 201\" required >\n");
      out.write("                    <label> Name: </label>  <input type=\"text\" name=\"name\" required >\n");
      out.write("                    <label> User Name: </label>  <input type=\"text\" name=\"username\" required > \n");
      out.write("                    <label> Password: </label>  <input type=\"password\" name=\"password\" required >\n");
      out.write("                    <label> Email </label>  <input type=\"email\" name=\"email\" required >\n");
      out.write("                    <input type=\"submit\" value=\"Add User\"> \n");
      out.write("                </form>\n");
      out.write("            <button  onclick=\"location.href='index.html'\" class=\"btn\" type=\"submit\">Home</button>\n");
      out.write("        </div>\n");
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
