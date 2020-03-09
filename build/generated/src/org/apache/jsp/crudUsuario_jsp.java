package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class crudUsuario_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");

            if (session.getAttribute("Email") == null) {
                response.sendRedirect("index.jsp");
            }

            request.setCharacterEncoding("UTF-8");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/routebook", "root", "");
            Statement s = conexion.createStatement();

            ResultSet listaViasUsuario = s.executeQuery("SELECT Nom_Via,Grado,Localidad,Sector,Valoracion,Intentos,Comentario "
                    + "From usuvia u JOIN via v ON u.idVia = v.idVia "
                    + "WHERE idUsuario =  "
                    + session.getAttribute("idUsuario"));
            



        
      out.write("\n");
      out.write("\n");
      out.write("        <!-----------------------------NAV-BAR---------------------------------------->\n");
      out.write("\n");
      out.write("        <div class=\"nav-area fixed-top\">\n");
      out.write("            <nav class=\"navbar navbar-light mx-4\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">RouteBook <b>Climb</b></a>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!------------------------------CRUD------------------------------------------>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"table-wrapper\">\n");
      out.write("                <div class=\"table-title\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-6\">\n");
      out.write("                            <h2>Administrador de <b>Vias</b></h2>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6\">\n");
      out.write("                            <a href=\"#addEmployeeModal\" class=\"btn btn-success\" data-toggle=\"modal\" data-target=\"#nueva\"><i class=\"material-icons\">&#xE147;</i> <span>Nueva Via</span></a>\n");
      out.write("                            <a href=\"logoutProcess.jsp\" class=\"btn btn-warning\" <i class=\"material-icons\"></i> <span>Cerrar Sesión</span></a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- Modal -->\n");
      out.write("                <div class=\"modal fade\" id=\"nueva\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("                    <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                        <div class=\"modal-content\">\n");
      out.write("                            <div class=\"modal-header\">\n");
      out.write("                                <h3 class=\"nueva-title\" id=\"exampleModalLabel\">Nueva vía</h3>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"modal-body\">\n");
      out.write("                                <form action=\"crudUsuarioProcess.jsp\">\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"examplenombre\">Nombre</label>\n");
      out.write("                                        <input type=\"text\" name=\"nombre\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"inputState\">Grado</label>\n");
      out.write("                                        <select id=\"inputState\" name=\"grado\" class=\"form-control\">\n");
      out.write("                                            <option selected>Elige...</option>\n");
      out.write("                                            <option>4</option>\n");
      out.write("                                            <option>5</option>\n");
      out.write("                                            <option>6a</option>\n");
      out.write("                                            <option>6a+</option>\n");
      out.write("                                            <option>6b</option>\n");
      out.write("                                            <option>6b+</option>\n");
      out.write("                                            <option>6c</option>\n");
      out.write("                                            <option>6c+</option>\n");
      out.write("                                            <option>7a</option>\n");
      out.write("                                            <option>7a+</option>\n");
      out.write("                                            <option>7b</option>\n");
      out.write("                                            <option>7b+</option>\n");
      out.write("                                            <option>7c</option>\n");
      out.write("                                            <option>7c+</option>\n");
      out.write("                                            <option>8a</option>\n");
      out.write("                                            <option>8a+</option>\n");
      out.write("                                            <option>8b</option>\n");
      out.write("                                            <option>8b+</option>\n");
      out.write("                                            <option>8c</option>\n");
      out.write("                                            <option>8c+</option>\n");
      out.write("                                            <option>9a</option>\n");
      out.write("                                            <option>9a+</option>\n");
      out.write("                                            <option>9b</option>\n");
      out.write("                                            <option>9b+</option>\n");
      out.write("                                            <option>9c</option>\n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"inputState\">Valoración</label>\n");
      out.write("                                        <select id=\"inputState\" name=\"valoracion\" class=\"form-control\">\n");
      out.write("                                            <option selected>Elige...</option>\n");
      out.write("                                            <option>*</option>\n");
      out.write("                                            <option>**</option>\n");
      out.write("                                            <option>***</option>\n");
      out.write("                                            <option>****</option>\n");
      out.write("                                            <option>*****</option>\n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"examplenombre\">Intentos</label>\n");
      out.write("                                        <input type=\"text\" name=\"intentos\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"examplenombre\">Localidad</label>\n");
      out.write("                                        <input type=\"text\" name=\"localidad\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"examplenombre\">Sector</label>\n");
      out.write("                                        <input type=\"text\" name=\"sector\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"examplenombre\">Comentario</label>\n");
      out.write("                                        <input type=\"text\" name=\"comentario\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                    </div>\n");
      out.write("\n");
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
      out.write("                            <th>Nombre</th>\n");
      out.write("                            <th>Grado</th>\n");
      out.write("                            <th>Valoración</th>\n");
      out.write("                            <th>Intentos</th>\n");
      out.write("                            <th>Localidad</th>\n");
      out.write("                            <th>Sector</th>\n");
      out.write("                            <th>Comentario</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    ");
                        while (listaViasUsuario.next()) {
                    
      out.write("\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaViasUsuario.getString("Nom_Via"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaViasUsuario.getString("Grado"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaViasUsuario.getString("Valoracion"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaViasUsuario.getString("Intentos"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaViasUsuario.getString("Localidad"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaViasUsuario.getString("Sector"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(listaViasUsuario.getString("Comentario"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\".jsp?idVia=\n");
      out.write("                                   \"class=\"edit\" data-toggle=\"modal\" data-target=\"\"><i class=\"material-icons\" data-toggle=\"tooltip\"  title=\"Edit\">&#xE254;</i></a>\n");
      out.write("                                <a href=\"borraViaCrudUsu.jsp?\n");
      out.write("                                   \" class=\"delete\" data-toggle=\"modal\"><i class=\"material-icons\" data-toggle=\"tooltip\" title=\"Delete\">&#xE872;</i></a>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </tbody>\n");
      out.write("                    ");

                        } // while   

                        conexion.close();
                    
      out.write("\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script src=\"script/script.js\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\" integrity=\"sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\" integrity=\"sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6\" crossorigin=\"anonymous\"></script>\n");
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
