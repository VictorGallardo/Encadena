<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/edit_style.css">
        <title></title>

    </head>

    <body>
        <% request.setCharacterEncoding("UTF-8"); %>

        <%

            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/routebook", "root", "");
            Statement s = conexion.createStatement();

            ResultSet modi = s.executeQuery("SELECT Nombre, Apellido, Email, Contraseña FROM usuario WHERE idUsuario="
                    + request.getParameter("idUsuario"));

            modi.last();
        %>


        <div class="card ">
            <h5 class="card-header bg-dark text-light">Modificar Usuario</h5>
            <div class="card-body">
                <div class="container">
                    <form method="get" action="updateUsu.jsp">
                        <div class="form-row" >
                            <div class="form-group col-md-1">
                                <label for="inputEmail4">Usuario-ID</label>
                                <input type="text" name="idVia" class="form-control" id="inputEmail4" value="<%= request.getParameter("idUsuario")%>" readonly>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Nombre</label>
                                <input type="text" name="Nom_Via" class="form-control" id="inputPassword4"  value="<%= modi.getString("Nombre")%>">
                            </div>

                            <div class="form-group col-md-5">
                                <label for="inputPassword4">Apellido</label>
                                <input type="text" name="Nom_Via" class="form-control" id="inputPassword4"  value="<%= modi.getString("Apellido")%>">
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputAddress2">Email</label>
                            <input type="text" name="Email" class="form-control" id="inputAddress2" value="<%= modi.getString("Email")%>">
                        </div>

                        <hr> 
                        <a href="crudAdminVia.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
                        <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button><br><br>
                    </form>
                </div>
            </div>
        </div>
                        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </body>
</html>