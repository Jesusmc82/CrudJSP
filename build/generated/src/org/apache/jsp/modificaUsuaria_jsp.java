package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class modificaUsuaria_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>MisMatronas</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("        <script type=\"text/javascript\" src=\"scripts.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" \n");
      out.write("              integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"bg\">\n");
      out.write("            <h1>MisMatronas.com</h1>\n");
      out.write("            <a href=index.jsp><button class=\"button2\">Pagina Principal</button></a>\n");
      out.write("    ");
 request.setCharacterEncoding("UTF-8"); 
      out.write("\n");
      out.write("      <h3>Modificación Usuario</h3>\n");
      out.write("          <form method=\"get\" action=\"grabaUsuarioModificado.jsp\">\n");
      out.write("            <div class=\"form-group\"> \n");
      out.write("              <label>&nbsp;&nbsp;Nº de socio:&nbsp;</label><input type=\"text\" size=\"5\" name=\"socioID\" value=\"");
      out.print( request.getParameter("socioID") );
      out.write("\" readonly>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("            <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type=\"text\" size=\"35\" name=\"nombre\" value=\"");
      out.print( request.getParameter("nombre") );
      out.write("\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("             <label>&nbsp;&nbsp;Estatura (en cm):&nbsp;</label><input type=\"text\" size=\"5\" name=\"estatura\" value=\"");
      out.print( request.getParameter("estatura") );
      out.write("\">\n");
      out.write("             <label>&nbsp;&nbsp;Edad:&nbsp;</label><input type=\"text\" size=\"5\" name=\"edad\" value=\"");
      out.print( request.getParameter("edad") );
      out.write("\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("             <label>&nbsp;&nbsp;Localidad:&nbsp;</label><input type=\"text\" name=\"localidad\" size=\"20\" value=\"");
      out.print( request.getParameter("localidad") );
      out.write("\">\n");
      out.write("            </div>\n");
      out.write("            &nbsp;&nbsp;<a href=\"index.jsp\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span>Cancelar</a>\n");
      out.write("            <button type=\"submit\" class=\"btn btn-success\"><span class=\"glyphicon glyphicon-ok\"></span>Aceptar</button><br><br>\n");
      out.write("          </form>\n");
      out.write("      <div class=\"text-center\">&copy; Jesús Martín Castro</div>\n");
      out.write("    </div>\n");
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
