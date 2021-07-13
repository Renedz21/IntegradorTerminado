<%-- 
    Document   : Error
    Created on : 22/06/2021, 08:29:26 PM
    Author     : Microsoft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="Js1.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
              integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
                integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
                integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>
        <style>@import "estilos.css"</style>
        <script src="https://kit.fontawesome.com/7a636b3642.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    </head>
    <body>
        <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light" id="contenido1">
            <div class="encabezado">
                <a href="Inicio.jsp" id="logo1"><img class="img-thumbnail" src="imgs/logo2.png" alt="alt" id="logo"/></a>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#content" aria-controls="content" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="content">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a href="Inicio.jsp" class="btn" id="link">Inicio</a>
                    </li>
                    <li class="nav-item active">
                        <a href="Nosotros.jsp" class="btn" id="link">Nosotros</a>
                    </li>
                    <li class="nav-item active">
                        <div class="btn-group">
                            <a id="drop" class="btn btn-light" type="button" href="Productos.jsp">
                                PRODUCTOS
                            </a>
                            <button id="drop" type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="Acuarelas.jsp">Acuarelas</a>
                                <a class="dropdown-item" href="#">Pinturas</a>
                                <a class="dropdown-item" href="#">Materiales de Arquitectura</a>
                                <a class="dropdown-item" href="#">Materiales de Escultura</a>
                                <a class="dropdown-item" href="#">Accesorios</a>
                                <a class="dropdown-item" href="#">Otros</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item active">
                        <a class="btn" href="Preguntas.jsp" id="link">Preguntas Frecuentes</a>
                    </li>
                    <li class="nav-item active">
                        <a class="btn" href="Contactanos.jsp" id="link">Contacto</a>
                    </li>
                    <li class="nav-item active">
                        <a class="btn" id="link"><i class="bi bi-cart2"></i></a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container-fluid text-center" id="contenido2">
            <div class="container" id="ctn">
                <h1 id="titulo">MENSAJE DEL SISTEMA</h1>
            </div>
        </div>
        
        <div class="alert alert-danger container mt-5 text-center" role="alert" id="alerta">
            <h4 class="alert-heading ">ERROR EN LA COMPRA, VERIFIQUE SUS DATOS<br><a href="Inicio.jsp">Volver al inicio</a></h4>
        </div>
        
    </body>
</html>
