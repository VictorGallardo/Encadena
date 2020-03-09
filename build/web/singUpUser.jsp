<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.security.MessageDigest"%>
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
    </head>

    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/routebook", "root", "");
            Statement s = conexion.createStatement();

            request.setCharacterEncoding("UTF-8");

            String contra = request.getParameter("Contraseña");

            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(contra.getBytes());
            String contraEncrip = DatatypeConverter.printHexBinary(md.digest());

            String consultaEmailUsuario = "SELECT * FROM usuario WHERE Email like '"
                    + request.getParameter("Email") + "'";

            ResultSet emailUsuario = s.executeQuery(consultaEmailUsuario);
            emailUsuario.last();

            if (emailUsuario.getRow() != 0) {
                out.println("Lo siento, ya esiste ese Email"
                        + request.getParameter("Email") + ".");
            } else {
                String insercion = "INSERT INTO usuario (Nombre,Apellido,Email,Contraseña) VALUES ('" + request.getParameter("Nombre")
                        + "', '" + request.getParameter("Apellido")
                        + "', '" + request.getParameter("Email")
                        + "', '" + contraEncrip + "')";
                s.execute(insercion);
                response.sendRedirect("login.jsp");
            }
            conexion.close();
        %>

    </body>

</html>