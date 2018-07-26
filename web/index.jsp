<%-- 
    Document   : login
    Created on : 23-11-2017, 16:14:55
    Author     : Wilson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>      
        <meta charset=UTF-8>
        <title>Rectificadora de Motores</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, maximum-scale=1">
        <link rel="icon" href="favicon.png" type="image/png">
        <link rel="shortcut icon" href="favicon.ico" type="img/x-icon">

        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,800italic,700italic,600italic,400italic,300italic,800,700,600' rel='stylesheet' type='text/css'>

        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">
        <link href="css/animate.css" rel="stylesheet" type="text/css">
        <link href="css/login.css" rel="stylesheet" type="text/css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.isotope.js"></script>
        <script type="text/javascript" src="js/wow.js"></script>
        <script type="text/javascript" src="js/classie.js"></script>

        <%
            if (session.getAttribute("errorLogin") != null) {
        %>
        <script>
            alert("<%=session.getAttribute("errorLogin")%>");
        </script>
        <%
                session.removeAttribute("errorLogin");
            }
        %>

    </head>
    <body>
    <center><img src="img/Logo.png" alt="" style="width: 75%;height: 100px"></center>
    <br>
    <br>
    <div class="login-wrap">
        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Ingresar</label>
            <input id="tab-2" type="hidden" name="tab" class="sign-up"><label for="tab-2" class="tab" style="color: white"><a href="formulario_registro_cliente_nat.jsp"></a></label>
            <div class="login-form">
                <div class="sign-in-htm">
                    <form method="POST" action="Servlet_Login">
                        <div class="group">
                            <label for="user" class="label">Usuario</label>
                            <input name="user" type="text" class="input">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Password</label>
                            <input name="pass" type="password" class="input" data-type="password">
                        </div>				
                        <div class="group">
                            <input type="submit" class="button" value="Ingresar">
                        </div>
                        <div class="hr"></div>
                    </form>
                </div>			
            </div>
        </div>
    </div>
</body>
</html>
