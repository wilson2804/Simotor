<%-- 
    Document   : administrar
    Created on : 22-07-2018, 2:50:58
    Author     : sergio
--%>

<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Rectificadora de Motores</title>

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/sidebar.css">
        <link rel="stylesheet" href="css/bootstrap-theme.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <%
            Usuario usuario = new Usuario("", "");
            Usuario user = new Usuario("", "");
            user = (Usuario) session.getAttribute("usuario");
            if (user != null && user.getId_tipo_usuario() == 1) {
                usuario = (Usuario) session.getAttribute("usuario");
            } else {
                response.sendRedirect("index.jsp");
            }

            if (session.getAttribute("exito") != null) {
        %>
        <script>
            alert("<%=session.getAttribute("exito")%>");
        </script>
        <%
                session.removeAttribute("exito");
            }
        %>

    </head>
    <body>
        <div class="sidenav">
            <%if (user != null && user.getId_tipo_usuario() == 1) {
            %>
            <h1 style="color: #000">BIENVENIDO <%=user.getUser().toUpperCase()%></h1>
            <%}%>
            <ul class="nav nav-pills brand-pills nav-stacked" role="tablist">
                <li role="presentation" class="brand-nav"><a href="orden_de_trabajo.jsp">Ordenes de Trabajo</a></li>                
                <li role="presentation" class="brand-nav"><a href="adm_cliente.jsp">Clientes</a></li>                
                <br>
                <br>
                <br>
                <br>
                <li role="presentation" class="brand-nav"><a href="Servlet_Login">Cerrar Sesión</a></li>
            </ul>
        </div>
    </body>
</html>
