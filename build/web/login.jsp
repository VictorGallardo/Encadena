<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login_style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
        <title>RouteBook</title>
    </head>

    <body>
        
        
        <!---------------Nav----------------------------------------------------------------------------------------->
        <div class="nav-area fixed-top ">
            <nav class="navbar navbar-light mx-4">
                <a class="navbar-brand" href="index.jsp">RouteBook <b>Climb</b></a>
            </nav>
        </div>

        <!---------------FORM --------------------------------------------------------------------------------------->
        <form action="loginUser.jsp" class="login-form">
            <p>Iniciar sesión</p>

            <div class="txtb">
                <input type="text" name="Email">
                <span data-placeholder="Email"></span>
            </div>

            <div class="txtb">
                <input type="password" name="Contraseña">
                <span data-placeholder="Contraseña"></span>
            </div>

            <input type="submit" class="logbtn" value="Iniciar Sesión">

            <div class="bottom-text">
                ¿Aún no tines cuenta? <a href="singUp.jsp">Regístrate</a>
            </div>

        </form>

        <script src="script/script.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>

</html>