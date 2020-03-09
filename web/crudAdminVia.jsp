<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/routebook", "root", "");
            Statement s = conexion.createStatement();

            ResultSet listaVias = s.executeQuery("SELECT * FROM via");
        %>

        <div class="nav-area fixed-top ">
            <nav class="navbar navbar-light mx-4">
                <a class="navbar-brand" href="index.jsp">RouteBook <b>Climb</b></a>
            </nav>
        </div>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Administrador de <b>Vias</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal" data-target="#nueva"><i class="material-icons">&#xE147;</i> <span>Nueva Vía</span></a>
                            <a href="adminZone.jsp" class="btn btn-warning" <i class="material-icons"></i> <span>Salir</span></a>
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
                                <form action="crudAdminViaProcess.jsp" method="get" class="login-form">
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
                                        <label for="examplenombre">Localidad</label>
                                        <input type="text" name="localidad" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="form-group">
                                        <label for="examplenombre">Sector</label>
                                        <input type="text" name="sector" class="form-control" id="exampleInputPassword1">
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
                            <th>IdVia</th>
                            <th>Nombre</th>
                            <th>Grado</th>
                            <th>Localidad</th>
                            <th>Sector</th>
                        </tr>
                    </thead>
                    <%
                        while (listaVias.next()) {
                    %>
                    <tbody>
                        <tr>
                            <td>
                                <%=listaVias.getString("idVia")%>
                            </td>
                            <td>
                                <%=listaVias.getString("Nom_Via")%>
                            </td>
                            <td>
                                <%=listaVias.getString("Grado")%>
                            </td>
                            <td>
                                <%=listaVias.getString("Localidad")%>
                            </td>
                            <td>
                                <%=listaVias.getString("Sector")%>
                            </td>
                            <td>

                                <a href="editVia.jsp?idVia=<%= listaVias.getString("idVia")%>
                                   "class="edit" data-toggle="modal" data-target=""><i class="material-icons" data-toggle="tooltip"  title="Edit">&#xE254;</i></a>
                                <a href="borraViaProcess.jsp?idVia=<%= listaVias.getString("idVia")%>" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
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
    </body>

</html>