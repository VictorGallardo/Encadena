package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.xml.bind.DatatypeConverter;
import java.security.MessageDigest;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class editVia_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css\">\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/edit_style.css\">\n");
      out.write("        <title></title>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");
 request.setCharacterEncoding("UTF-8"); 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");


            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/routebook", "root", "");
            Statement s = conexion.createStatement();

            ResultSet modi = s.executeQuery("SELECT Nombre, Apellido, Email, Contraseña FROM usuario WHERE idUsuario=" 
                    + request.getParameter("idUsuario"));

            modi.last();
        
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <br><br>\n");
      out.write("            <div class=\"panel panel-info\">\n");
      out.write("                <div class=\"panel-heading text-center\">Modificación de Usuario</div>\n");
      out.write("                <form method=\"get\" action=\"updateUsu.jsp\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>&nbsp;&nbsp;UsuarioID:&nbsp;</label>\n");
      out.write("                        <input type=\"text\" name=\"idUsuario\" value=\"");
      out.print( request.getParameter("idUsuario"));
      out.write("\" readonly>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type=\"text\" name=\"Nombre\" value=\"");
      out.print( modi.getString("Nombre"));
      out.write("\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>&nbsp;&nbsp;Apellido (en cm):&nbsp;</label><input type=\"text\" name=\"Apellido\" value=\"");
      out.print( modi.getString("Apellido"));
      out.write("\">\n");
      out.write("                        <label>&nbsp;&nbsp;Email:&nbsp;</label><input type=\"text\" name=\"Email\" value=\"");
      out.print( modi.getString("Email"));
      out.write("\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>&nbsp;&nbsp;Contraseña:&nbsp;</label><input type=\"text\" name=\"Contraseña\" value=\"");
      out.print( modi.getString("Contraseña"));
      out.write("\">\n");
      out.write("                    </div>\n");
      out.write("                    <hr> &nbsp;&nbsp;\n");
      out.write("                    <a href=\"crudAdminUsu.jsp\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span>Cancelar</a>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-success\"><span class=\"glyphicon glyphicon-ok\"></span>Aceptar</button><br><br>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"text-center\">&copy; RouteBook CLIMB</div>\n");
      out.write("        </div>\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
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
