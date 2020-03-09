<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/crud_style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>

    <body>

        <%
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
            



        %>

        <!-----------------------------NAV-BAR---------------------------------------->

        <div class="nav-area fixed-top">
            <nav class="navbar navbar-light mx-4">
                <a class="navbar-brand" href="#">RouteBook <b>Climb</b></a>
            </nav>
        </div>

        <!------------------------------CRUD------------------------------------------>

        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Administrador de <b>Vias</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal" data-target="#nueva"><i class="material-icons">&#xE147;</i> <span>Nueva Via</span></a>
                            <a href="logoutProcess.jsp" class="btn btn-warning" <i class="material-icons"></i> <span>Cerrar Sesión</span></a>
                        </div>
                    </div>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="nueva" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="nueva-title" id="exampleModalLabel">Nueva vía</h3>
                            </div>
                            <div class="modal-body">
                                <form action="crudUsuarioProcess.jsp">
                                    <div class="form-group">
                                        <label for="examplenombre">Nombre</label>
                                        <input type="text" name="nombre" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputState">Grado</label>
                                        <select id="inputState" name="grado" class="form-control">
                                            <option selected>Elige...</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6a</option>
                                            <option>6a+</option>
                                            <option>6b</option>
                                            <option>6b+</option>
                                            <option>6c</option>
                                            <option>6c+</option>
                                            <option>7a</option>
                                            <option>7a+</option>
                                            <option>7b</option>
                                            <option>7b+</option>
                                            <option>7c</option>
                                            <option>7c+</option>
                                            <option>8a</option>
                                            <option>8a+</option>
                                            <option>8b</option>
                                            <option>8b+</option>
                                            <option>8c</option>
                                            <option>8c+</option>
                                            <option>9a</option>
                                            <option>9a+</option>
                                            <option>9b</option>
                                            <option>9b+</option>
                                            <option>9c</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputState">Valoración</label>
                                        <select id="inputState" name="valoracion" class="form-control">
                                            <option selected>Elige...</option>
                                            <option>*</option>
                                            <option>**</option>
                                            <option>***</option>
                                            <option>****</option>
                                            <option>*****</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="examplenombre">Intentos</label>
                                        <input type="text" name="intentos" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="form-group">
                                        <label for="examplenombre">Localidad</label>
                                        <input type="text" name="localidad" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="form-group">
                                        <label for="examplenombre">Sector</label>
                                        <input type="text" name="sector" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="form-group">
                                        <label for="examplenombre">Comentario</label>
                                        <input type="text" name="comentario" class="form-control" id="exampleInputPassword1">
                                    </div>

                                    <hr class="my-4">
                                    <div class="send-btn">
                                        <button type="submit" class="btn btn-primary">Guardar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Grado</th>
                            <th>Valoración</th>
                            <th>Intentos</th>
                            <th>Localidad</th>
                            <th>Sector</th>
                            <th>Comentario</th>
                        </tr>
                    </thead>
                    <%                        while (listaViasUsuario.next()) {
                    %>
                    <tbody>
                        <tr>

                            <td>
                                <%=listaViasUsuario.getString("Nom_Via")%>
                            </td>
                            <td>
                                <%=listaViasUsuario.getString("Grado")%>
                            </td>
                            <td>
                                <%=listaViasUsuario.getString("Valoracion")%>
                            </td>
                            <td>
                                <%=listaViasUsuario.getString("Intentos")%>
                            </td>
                            <td>
                                <%=listaViasUsuario.getString("Localidad")%>
                            </td>
                            <td>
                                <%=listaViasUsuario.getString("Sector")%>
                            </td>
                            <td>
                                <%=listaViasUsuario.getString("Comentario")%>
                            </td>
                            <td>
                                <a href=".jsp?idVia=
                                   "class="edit" data-toggle="modal" data-target=""><i class="material-icons" data-toggle="tooltip"  title="Edit">&#xE254;</i></a>
                                <a href="borraViaCrudUsu.jsp?
                                   " class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                            </td>
                        </tr>
                    </tbody>
                    <%
                        } // while   

                        conexion.close();
                    %>
                </table>
            </div>
        </div>

        <script src="script/script.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>

</html>