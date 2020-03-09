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
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/routebook", "root", "");
            Statement s = conexion.createStatement();

            String insercion = "INSERT INTO via (Nom_Via, Grado, Localidad, Sector) ";
            insercion += "VALUES ('";
            insercion += request.getParameter("nombre") + "', '";
            insercion += request.getParameter("grado") + "', '";
            insercion += request.getParameter("localidad") + "', '";
            insercion += request.getParameter("sector") + "')";

            s.execute(insercion);
            conexion.close();


        %>

        <script>
            location.replace("crudAdminVia.jsp");
        </script>

    </body>
</html>
