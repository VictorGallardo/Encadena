<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/routebook", "root", "");
            Statement s = conexion.createStatement();

            request.setCharacterEncoding("UTF-8");

            String insercion = ("DELETE FROM via (Nom_Via,Grado,Localidad,Sector) VALUES ("
                    + " '" + request.getParameter("nombre")
                    + "', '" + request.getParameter("grado")
                    + "', '" + request.getParameter("localidad")
                    + "', '" + request.getParameter("sector") + "')");
            s.execute(insercion);

            ResultSet lista = s.executeQuery("SELECT idVia FROM via WHERE Nom_Via= '" 
            + request.getParameter("nombre") + "'");
            
            lista.last();
            
            insercion = ("DELETE FROM usuvia (idUsuario,idVia,valoracion,intentos,comentario) VALUES ("
                    
                    + " '" + session.getAttribute("idUsuario")
                    + "', '" + lista.getString("idVia")
                    + "', '" + request.getParameter("valoracion")
                    + "', " + Integer.valueOf(request.getParameter("intentos"))
                    + ", '" + request.getParameter("comentario") + "')");
                    
                             
            s.execute(insercion);
            response.sendRedirect("crudUsuario.jsp");

            conexion.close();
        %>
    <script>
        document.location = "crudAdminVia.jsp"
    </script> 
</body>
