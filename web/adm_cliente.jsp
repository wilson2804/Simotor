<%-- 
    Document   : adm_cliente
    Created on : 22-07-2018, 16:10:04
    Author     : sergio
--%>

<%@page import="modelo.DAOCliente"%>
<%@page import="clases.Usuario"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>                
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.css">
        <link rel="stylesheet" href="css/sidebar.css">
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <script type="text/javascript">
            function Abrir_ventana(pagina) {
                var opciones = "toolbar=no, location=no, directories=no, status=yes, menubar=yes, scrollbars=no, resizable=yes, width=900, height=600, top=20, left=200";
                window.open(pagina, "", opciones);
            }
        </script>

        <meta charset="UTF-8">
        <title>Rectificadora de Motores</title>

        <%
            Usuario usuario = new Usuario("", "");
            Usuario user = new Usuario("", "");
            DAOCliente dao = new DAOCliente();
            user = (Usuario) session.getAttribute("usuario");
            if (user != null && user.getId_tipo_usuario() == 1) {
                usuario = (Usuario) session.getAttribute("usuario");
            } else {
                response.sendRedirect("index.jsp");
            }
            
            pageContext.setAttribute("clientesN", dao.listarCliente());
            
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
        <div class="main">
            <form action="ServletFiltro_Cliente" method="POST">
                Buscar Por :
                <select name="tipo">
                    <option value="0">
                        Todos
                    </option>
                    <option value="1">
                        Rut
                    </option>
                    <option value="2">
                        Nombre
                    </option>
                    <option value="3">
                        Apellido Paterno
                    </option>
                    <option value="4">
                        Apellido Materno
                    </option>
                    <option value="5">
                        Comuna
                    </option>
                    <option value="6">
                        Tipo de Cliente
                    </option>                   
                </select>
                <input type="text" name="buscar">
                <input class="btn-info btn-sm" type="submit" value="Buscar">
            </form>
            <br>
            <div class="panel panel-default" style="width: 80%">
                <table border="0" style="text-align: center;width: 80%">
                    <tr>
                        <td>
                            <a href="javascript:Abrir_ventana('formulario_registro_cliente_nat_adm.jsp')"><button class="btn-info btn btn-lg">Ingresar Cliente</button></a>
                        </td>                        
                        <td>
                            <button class="btn-info btn btn-lg" onclick="location.reload()">Actualizar</button>
                        </td>
                    </tr>
                </table>
            </div>
            <h1>Clientes</h1>
            <form action="ServletFiltro_Cliente" method="POST">
                <div class="panel panel-default" style="width: 100%">
                    <table class="table table-hover" cellspacing="" border="0" style="text-align: center">
                        <thead style="background-color: #4CAF50;color: white">
                            <tr>                                
                                <td>Nombre</td>
                                <td nowrap>Apellido Paterno</td>                                
                                <td>Telefono Celular</td>
                                <td>Telefono Fijo</td>                                
                            </tr>
                        </thead>
                        <c:forEach var= "u" items="${clientesN}">
                            <tr>                                 
                                <td nowrap>${ u.getNombre()}</td>
                                <td nowrap>${ u.getApellido()}</td>
                                <td nowrap>${ u.getCelular()}</td>
                                <td nowrap>${ u.getFijo()}</td>                               
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </form>                        
        </div>  
    </body>
</html>
