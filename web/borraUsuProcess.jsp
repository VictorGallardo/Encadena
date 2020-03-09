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

        s.execute("DELETE FROM usuario WHERE idUsuario=" + request.getParameter("idUsuario"));

        s.close();
    %>	
    <script>
        document.location = "crudAdminUsu.jsp"
    </script> 
</body>
