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
        <title>JSP Page</title>
    </head>
    <body>

        <%

            request.setCharacterEncoding("UTF-8");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/routebook", "root", "");
            Statement s = conexion.createStatement();

            String email = request.getParameter("Email");
            String contra = request.getParameter("Contraseña");

            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(contra.getBytes());
            String contraEncrip = DatatypeConverter.printHexBinary(md.digest());

            int idUsuario = 0;
            boolean comprob = false;

            ResultSet admin = s.executeQuery("SELECT Email, idUsuario, Contraseña FROM usuario WHERE Email= 'admin@routebook.com'");
            admin.last();

            if (email.equals("admin@routebook.com") && contraEncrip.equals(admin.getString("Contraseña"))) {
                response.sendRedirect("adminZone.jsp");
            } 

            ResultSet listado = s.executeQuery("SELECT Email, Contraseña, idUsuario FROM usuario");

            while (listado.next()) {
                if (email.equals(listado.getString("Email"))) {
                    if (contraEncrip.equals(listado.getString("Contraseña"))) {
                        comprob = true;
                        idUsuario = listado.getInt("idUsuario");
                    }
                }
            }

            if (comprob) {
                session.setAttribute("idUsuario", idUsuario);
                session.setAttribute("Email", email);
        %><script>
            location.replace("crudUsuario.jsp");
        </script><%
        } else {
        %><script>
            location.replace("index.jsp");
        </script><%
            }
        %>

    </body>
</html>
