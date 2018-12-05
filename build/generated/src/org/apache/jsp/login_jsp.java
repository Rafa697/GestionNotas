package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        \n");
      out.write("        <link href=\"../css/estilo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>Gestion notas</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container well\" id=\"containerLogin\">\n");
      out.write("\n");
      out.write("            <hr>\n");
      out.write("            <center><h1>Ingresa tus datos</h1></center>\n");
      out.write("            <hr>\n");
      out.write("            <center> <img src=\"img/user.png\" alt=\"\" width=\"100\" height=\"100\" class=\"img-circle\"/></center>\n");
      out.write("            <form action=\"validarusuario.jsp\" method=\"POST\" id=\"form1\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"exampleInputEmail1\">Usuario</label>\n");
      out.write("                    <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail1\" placeholder=\"usuario@example.com\" name=\"txtcorreo\" required=\"\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"exampleInputPassword1\">Contraseña</label>\n");
      out.write("                    <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword1\" placeholder=\"Password\" name=\"txtclave\" required=\"\" maxlength=\"8\">\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary\"  id=\"botonLogin\" value=\"\">Enviar</button>\n");
      out.write("            </form>\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

            HttpSession sesion = request.getSession();
            int nivel = 0;
            if (request.getAttribute("nivel") != null) {
                nivel = (Integer) request.getAttribute("nivel");
                if (nivel == 1) {
                    sesion.setAttribute("nombre", request.getAttribute("nombre"));
                    response.sendRedirect("index.jsp");

                }
            }
        
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
