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

            ResultSet listaUsu = s.executeQuery("SELECT * FROM usuario");
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
                            <h2>Administrador de <b>Usuarios</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal" data-target="#nueva"><i class="material-icons">&#xE147;</i> <span>Nuevo Usuario</span></a>
                            <a href="adminZone.jsp" class="btn btn-warning" <i class="material-icons"></i> <span>Salir</span></a>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="nueva" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="nueva-title" id="exampleModalLabel">Nuevo Usuario</h3>
                            </div>
                            <div class="modal-body">
                                <form action="crudAdminUsuProcess.jsp" method="get" class="login-form">
                                    <div class="form-group">
                                        <label for="examplenombre">Nombre</label>
                                        <input type="text" name="Nombre" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="form-group">
                                        <label for="examplenombre">Apellido</label>
                                        <input type="text" name="Apellido" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="form-group">
                                        <label for="examplenombre">Email</label>
                                        <input type="text" name="Email" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="form-group">
                                        <label for="examplenombre">Contraseña</label>
                                        <input type="text" name="Contraseña" class="form-control" id="exampleInputPassword1">
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
                            <th>IdUsuario</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Email</th>
                            <th>Contraseña</th>
                        </tr>
                    </thead>
                    <%
                        while (listaUsu.next()) {
                    %>
                    <tbody>
                        <tr>
                            <td>
                                <%=listaUsu.getString("idUsuario")%>
                            </td>
                            <td>
                                <%=listaUsu.getString("Nombre")%>
                            </td>
                            <td>
                                <%=listaUsu.getString("Apellido")%>
                            </td>
                            <td>
                                <%=listaUsu.getString("Email")%>
                            </td>
                            <td>
                                <%=listaUsu.getString("Contraseña")%>
                            </td>
                            <td>
                                <a href="editUsu.jsp?idUsuario=<%= listaUsu.getString("idUsuario")%>
                                   "class="edit" data-toggle="modal" data-target=""><i class="material-icons" data-toggle="tooltip"  title="Edit">&#xE254;</i></a>
                                <a href="borraUsuProcess.jsp?idUsuario=<%= listaUsu.getString("idUsuario")%>" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
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