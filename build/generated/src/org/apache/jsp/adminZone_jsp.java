package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminZone_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <!DOCTYPE html>\n");
      out.write("    <html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/admin_style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!---------------------------NAV-AREA---------------------------------->\n");
      out.write("\n");
      out.write("        <div class=\"nav-area fixed-top \">\n");
      out.write("            <nav class=\"navbar navbar-light mx-4\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.jsp\">RouteBook <b>Climb</b></a>\n");
      out.write("                <div class=\"nav-buttons \">\n");
      out.write("                    <a href=\"logoutProcess.jsp\" class=\"btn btn-outline-dark my-2 my-sm-0 bg-light\">Cerrar sesión</a>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!--------------------------JUMBOTRON---------------------------------->\n");
      out.write("\n");
      out.write("        <div class=\"jumbotron jumbotron-fluid justify-content text-light\">\n");
      out.write("\n");
      out.write("            <p class=\"lead\"></p>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-----------------------------FORMS----------------------------------->\n");
      out.write("        <div class=\"title\">\n");
      out.write("            <h2 class=\"text-dark\">Zona Administrador</h2>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"forms\">\n");
      out.write("            <div class=\"accordion\" id=\"accordionExample\">\n");
      out.write("                <div class=\"card\">\n");
      out.write("                    <div class=\"card-header\" id=\"headingOne\">\n");
      out.write("                        <h2 class=\"mb-0\">\n");
      out.write("                            <button class=\"btn btn-secondary btn-lg\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">\n");
      out.write("                                Consultar usuarios y vias\n");
      out.write("                            </button>\n");
      out.write("                        </h2>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"collapseOne\" class=\"collapse show\" aria-labelledby=\"headingOne\" data-parent=\"#accordionExample\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <a class=\"btn btn-secondary btn-lg\" href=\"crudAdminUsu.jsp\" role=\"button\">Usuários</a>\n");
      out.write("                            <a class=\"btn btn-secondary btn-lg\" href=\"crudAdminVia.jsp\" role=\"button\">Vías</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"card\">\n");
      out.write("                    <div class=\"card-header\" id=\"headingTwo\">\n");
      out.write("                        <h2 class=\"mb-0\">\n");
      out.write("                            <button class=\"btn btn-secondary btn-lg\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\">\n");
      out.write("                                Acciones directas\n");
      out.write("                            </button>\n");
      out.write("                        </h2>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"collapseTwo\" class=\"collapse\" aria-labelledby=\"headingTwo\" data-parent=\"#accordionExample\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <div class=\"col-sm-6\">\n");
      out.write("                                <a href=\"\" class=\"btn btn-success\" data-toggle=\"modal\" data-target=\"#nueva\"><i class=\"material-icons\"></i> <span>Nueva Via</span></a>\n");
      out.write("                                <a href=\"\" class=\"btn btn-success\" data-toggle=\"modal\" data-target=\"#nuevo\"><i class=\"material-icons\"></i> <span>Nuevo Usuario</span></a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"modal fade\" id=\"nuevo\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("                                <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                                    <div class=\"modal-content\">\n");
      out.write("                                        <div class=\"modal-header\">\n");
      out.write("                                            <h3 class=\"nueva-title\" id=\"exampleModalLabel\">Nuevo Usuario</h3>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"modal-body\">\n");
      out.write("                                            <form action=\"crudAdminUsuProcess.jsp\" method=\"get\" class=\"login-form\">\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"examplenombre\">Nombre</label>\n");
      out.write("                                                    <input type=\"text\" name=\"nombre\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"examplenombre\">Apellido</label>\n");
      out.write("                                                    <input type=\"text\" name=\"Apellido\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"examplenombre\">Email</label>\n");
      out.write("                                                    <input type=\"text\" name=\"Email\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"examplenombre\">Contraseña</label>\n");
      out.write("                                                    <input type=\"text\" name=\"Contraseña\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <hr class=\"my-4\">\n");
      out.write("                                                <div class=\"send-btn\">\n");
      out.write("                                                    <button type=\"submit\" class=\"btn btn-primary\">Guardar</button>\n");
      out.write("                                                </div>\n");
      out.write("                                            </form>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"modal fade\" id=\"nueva\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("                                <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                                    <div class=\"modal-content\">\n");
      out.write("                                        <div class=\"modal-header\">\n");
      out.write("                                            <h3 class=\"nueva-title\" id=\"exampleModalLabel\">Nueva vía</h3>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"modal-body\">\n");
      out.write("                                            <form action=\"crudAdminViaProcess.jsp\" method=\"get\" class=\"login-form\">\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"examplenombre\">Nombre</label>\n");
      out.write("                                                    <input type=\"text\" name=\"nombre\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"inputState\">Grado</label>\n");
      out.write("                                                    <select id=\"inputState\" name=\"grado\" class=\"form-control\">\n");
      out.write("                                                        <option selected>Elige...</option>\n");
      out.write("                                                        <option>4</option>\n");
      out.write("                                                        <option>5</option>\n");
      out.write("                                                        <option>6a</option>\n");
      out.write("                                                        <option>6a+</option>\n");
      out.write("                                                        <option>6b</option>\n");
      out.write("                                                        <option>6b+</option>\n");
      out.write("                                                        <option>6c</option>\n");
      out.write("                                                        <option>6c+</option>\n");
      out.write("                                                        <option>7a</option>\n");
      out.write("                                                        <option>7a+</option>\n");
      out.write("                                                        <option>7b</option>\n");
      out.write("                                                        <option>7b+</option>\n");
      out.write("                                                        <option>7c</option>\n");
      out.write("                                                        <option>7c+</option>\n");
      out.write("                                                        <option>8a</option>\n");
      out.write("                                                        <option>8a+</option>\n");
      out.write("                                                        <option>8b</option>\n");
      out.write("                                                        <option>8b+</option>\n");
      out.write("                                                        <option>8c</option>\n");
      out.write("                                                        <option>8c+</option>\n");
      out.write("                                                        <option>9a</option>\n");
      out.write("                                                        <option>9a+</option>\n");
      out.write("                                                        <option>9b</option>\n");
      out.write("                                                        <option>9b+</option>\n");
      out.write("                                                        <option>9c</option>\n");
      out.write("                                                    </select>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"examplenombre\">Localidad</label>\n");
      out.write("                                                    <input type=\"text\" name=\"localidad\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"examplenombre\">Sector</label>\n");
      out.write("                                                    <input type=\"text\" name=\"sector\" class=\"form-control\" id=\"exampleInputPassword1\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <hr class=\"my-4\">\n");
      out.write("                                                <div class=\"send-btn\">\n");
      out.write("                                                    <button type=\"submit\" class=\"btn btn-primary\">Guardar</button>\n");
      out.write("                                                </div>\n");
      out.write("                                            </form>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("            (function() {\n");
      out.write("                'use strict';\n");
      out.write("                window.addEventListener('load', function() {                  \n");
      out.write("                    var forms = document.getElementsByClassName('needs-validation');\n");
      out.write("                    var validation = Array.prototype.filter.call(forms, function(form) {\n");
      out.write("                        form.addEventListener('submit', function(event) {\n");
      out.write("                            if (form.checkValidity() === false) {\n");
      out.write("                                event.preventDefault();\n");
      out.write("                                event.stopPropagation();\n");
      out.write("                            }\n");
      out.write("                            form.classList.add('was-validated');\n");
      out.write("                        }, false);\n");
      out.write("                    });\n");
      out.write("                }, false);\n");
      out.write("            })();\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("    </html>");
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
