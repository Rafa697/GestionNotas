package org.apache.jsp.catedratico;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.Conexion;
import java.sql.ResultSet;

public final class insertar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap.min.css\">\n");
      out.write("                <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <title>Inicio</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("             <div class=\"row\">\n");
      out.write("                 <div class=\"col-4\">\n");
      out.write("                     \n");
      out.write("                 </div>\n");
      out.write("                 <div class=\"col-4\">\n");
      out.write("                     <form action=\"../catedratico?action=insertar\" method=\"POST\">\n");
      out.write("                         <h1> Catedraticos </h1>\n");
      out.write("            <label for=\"nombre\">ID Catedratico</label>\n");
      out.write("            <input class=\"form-control \" name=\"id_catedratico\" required=\"\">\n");
      out.write("            <label for=\"nombre\">ID Persona</label>\n");
      out.write("            <input class=\"form-control \" name=\"id_persona\" required=\"\">\n");
      out.write("            <label for=\"nombre\">Titulo</label>\n");
      out.write("            <input class=\"form-control \" name=\"titulo\" required=\"\">\n");
      out.write("            <select name=\"\">\n");
      out.write("            ");

            Conexion cn = new Conexion();
            try {
                    cn.conectar();
                    String sql="select nombre, apellido from tbl_personas where id_rol=2";
                    cn.st=cn.conn.createStatement();
                    cn.rs=cn.st.executeQuery(sql);
                    while(cn.rs.next()){
                    out.println("<option>"+cn.rs.getString(2)+"</option>");
                    }
                } catch (Exception e) {
                    out.print(e.toString());
                }
            
      out.write("\n");
      out.write("            </select>\n");
      out.write("            \n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("            <button class=\"form-control btn badge-light btn-dark\" >Enviar</button>\n");
      out.write("                     </form>\n");
      out.write("                     ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${msg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                     <br>\n");
      out.write("                     <br>\n");
      out.write("                     <center> <a class=\"btn btn-dark btn-light\" href=\"/Gestion_notas/index.jsp\" >↩ Volver a inicio</a> </center>\n");
      out.write("        </div>\n");
      out.write("                     \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("             </div>\n");
      out.write("        </div>\n");
      out.write("</body>\n");
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
