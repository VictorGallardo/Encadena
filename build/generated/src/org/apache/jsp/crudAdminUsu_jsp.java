package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class crudAdminUsu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/crud_style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/routebook", "root", "");
            Statement s = conexion.createStatement();

            ResultSet listaUsu = s.executeQuery("SELECT * FROM usuario");
        
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"nav-area fixed-top \">\n");
      out.write("            <nav class=\"navbar navbar-light mx-4\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.jsp\">RouteBook <b>Climb</b></a>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"table-wrapper\">\n");
      out.write("                <div class=\"table-title\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-6\">\n");
      out.write("                            <h2>Administrador de <b>Usuarios</b></h2>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6\">\n");
      out.write("                            <a href=\"#addEmployeeModal\" class=\"btn btn-success\" data-toggle=\"modal\" data-target=\"#nueva\"><i class=\"material-icons\">&#xE147;</i> <span>Nuevo Usuario</span></a>\n");
      out.write("                            <a href=\"adminZone.jsp\" class=\"btn btn-warning\" <i class=\"material-icons\"></i> <span>Salir</span></a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal fade\" id=\"nueva\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("                    <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                        <div class=\"modal-content\">\n");
      out.write("                            <div class=\"modal-header\">\n");
      out.write("                                <h3 class=\"nueva-title\" id=\"exampleModalLabel\">Nuevo Usuario</h3>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"modal-body\">\n");
      out.write("                                <form action=\"crudAdminUsuProcess.jsp\" method=\"get\" class=\"login-form\">\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"examplenombre\">Nombre</label>\n");
      out.write("                                        <input type=\"text\" name=\"Nombre\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"examplenombre\">Apellido</label>\n");
      out.write("                                        <input type=\"text\" name=\"Apellido\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"examplenombre\">Email</label>\n");
      out.write("                                        <input type=\"text\" name=\"Email\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"examplenombre\">Contraseña</label>\n");
      out.write("                                        <input type=\"text\" name=\"Contraseña\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <hr class=\"my-4\">\n");
      out.write("                                    <div class=\"send-btn\">\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-primary\">Guardar</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <table class=\"table table-striped table-hover\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>IdUsuario</th>\n");
      out.write("                            <th>Nombre</th>\n");
      out.write("                            <th>Apellido</th>\n");
      out.write("                            <th>Email</th>\n");
      out.write("                            <th>Contraseña</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    ");

                        while (listaUsu.next()) {
                    
      out.write("\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaUsu.getString("idUsuario"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaUsu.getString("Nombre"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaUsu.getString("Apellido"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaUsu.getString("Email"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaUsu.getString("Contraseña"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"editUsu.jsp?idUsuario=");
      out.print( listaUsu.getString("idUsuario"));
      out.write("\n");
      out.write("                                   \"class=\"edit\" data-toggle=\"modal\" data-target=\"\"><i class=\"material-icons\" data-toggle=\"tooltip\"  title=\"Edit\">&#xE254;</i></a>\n");
      out.write("                                <a href=\"borraUsuProcess.jsp?idUsuario=");
      out.print( listaUsu.getString("idUsuario"));
      out.write("\" class=\"delete\" data-toggle=\"modal\"><i class=\"material-icons\" data-toggle=\"tooltip\" title=\"Delete\">&#xE872;</i></a>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </tbody>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    ");

                        } // while   

                        conexion.close();
                    
      out.write("\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"script/script.js\"></script>\n");
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
