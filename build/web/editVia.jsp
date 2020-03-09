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

        <!-- Bootstrap -->

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/edit_style.css">
        <title></title>

    </head>


    <% request.setCharacterEncoding("UTF-8"); %>



    <%

        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/routebook", "root", "");
        Statement s = conexion.createStatement();

        ResultSet modi = s.executeQuery("SELECT Nom_Via, Grado, Localidad, Sector FROM via WHERE idVia="
                + request.getParameter("idVia"));

        modi.last();
    %>


    <div class="card ">
        <h5 class="card-header bg-dark text-light">Modificar Vía</h5>
        <div class="card-body">
            <div class="container">
                <form method="get" action="updateVia.jsp">
                    <div class="form-row" >
                        <div class="form-group col-md-2">
                            <label for="inputEmail4">Vía-Id</label>
                            <input type="text" name="idVia" class="form-control" id="inputEmail4" value="<%= request.getParameter("idVia")%>">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Nombre</label>
                            <input type="text" name="Nom_Via" class="form-control" id="inputPassword4"  value="<%= modi.getString("Nom_Via")%>">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">Grado</label>
                            <select id="inputState" name="Grado" class="form-control" value="<%= modi.getString("Grado")%>">
                                <option selected><%= modi.getString("Grado")%></option>
                                <option>...</option>
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

                        <div class="form-group col-md-6">
                            <label for="inputAddress2">Localidad</label>
                            <input type="text" name="Localidad" class="form-control" id="inputAddress2" value="<%= modi.getString("Localidad")%>">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="inputCity">Sector</label>
                            <input type="text" name="Sector" class="form-control" id="inputCity" value="<%= modi.getString("Sector")%>">
                        </div>

                    </div>

                    <hr> 
                    <a href="crudAdminVia.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
                    <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button><br><br>
                </form>
              
            </div>
        </div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>


</html>