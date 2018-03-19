package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class Embarazos_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html\"; charset=\"UTF-8\">\n");
      out.write("        <title>Embarazos</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" \n");
      out.write("              integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #fadbd8;\">\n");
      out.write("\n");
      out.write("        <h1>MisMatronas.com</h1>\n");
      out.write("        <h3>Embarazos</h3>\n");
      out.write("        <button type=\"button\" class=\"btn btn-success\" onclick='nuevo()'><span class=\"glyphicon glyphicon-plus-sign\"></span></button>\n");
      out.write("        <table class=\"table\" border=\"3\">\n");
      out.write("            <tr>\n");
      out.write("                <th>FPP</th><th>NHC</th><th>Pruebas</th><th>Colegiado</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MisMatronas", "root", "root");
                Statement s = conexion.createStatement();

                ResultSet listado = s.executeQuery("Select * FROM Embarazos");

                while (listado.next()) {
                    out.println("<tr>");
                    out.println("<td>" + listado.getString("FPP") + "</td>");
                    out.println("<td>" + listado.getString("NHC") + "</td>");
                    out.println("<td>" + listado.getString("Pruebas_Diagnosticas") + "</td>");
                    out.println("<td>" + listado.getString("Numero_Colegiado") + "</td>");
            
      out.write("\n");
      out.write("            <td>\n");
      out.write("                <form action=\"Embarazos.jsp\">\n");
      out.write("                    <input type=\"hidden\" name=\"ID_Embarazos\" value=\"");
      out.print(listado.getString("ID_Embarazos"));
      out.write("\" />\n");
      out.write("                    <button type='submit' class='btn btn-danger' title=\"Borrar\"><span class=\"glyphicon glyphicon-remove-sign\"></span></button>\n");
      out.write("                </form>\n");
      out.write("                <form method=\"get\" action=\"Embarazos.jsp\">\n");
      out.write("                    <input type=\"hidden\" name=\"FPP\" value=\"");
      out.print(listado.getString("FPP"));
      out.write("\"/>\n");
      out.write("                    <input type=\"hidden\" name=\"NHC\" value=\"");
      out.print(listado.getString("NHC"));
      out.write("\">\n");
      out.write("                    <input type=\"hidden\" name=\"Pruebas_Diagnosticas\" value=\"");
      out.print(listado.getString("Pruebas_Diagnosticas"));
      out.write("\">\n");
      out.write("                    <input type=\"hidden\" name=\"Numero_Colegiado\" value=\"");
      out.print(listado.getString("Numero_Colegiado"));
      out.write("\">\n");
      out.write("                    <button type='submit' class='btn btn-warning' title=\"Editar\"><span class=\"glyphicon glyphicon-edit\"></span></button>\n");
      out.write("                </form>\n");
      out.write("            </td>\n");
      out.write("            ");

                } //while
                conexion.close();
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
