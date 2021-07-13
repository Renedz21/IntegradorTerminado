<%-- 
    Document   : Preguntas
    Created on : 22/06/2021, 07:33:02 PM
    Author     : Microsoft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <script src="https://kit.fontawesome.com/7a636b3642.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap" rel="stylesheet">
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" 
              integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    </head>
    <body>
<nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light " id="contenido1">
            <div class="encabezado">
                <h3><a>Arti Center</a></h3>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#content" aria-controls="content" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="content">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a href="Inicio.jsp" class="btn" id="link">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a href="Nosotros.jsp" class="btn" id="link">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn" href="Preguntas.jsp" id="link">Preguntas Frecuentes</a>
                    </li>
                    <li class="nav-item">
                        <div class="btn-group">
                            <a id="drop" class="btn btn-light" type="button" href="Controlador_Producto?accion=home">
                                Productos
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
                    <li class="nav-item">
                        <a class="btn" id="link"><i class="bi bi-cart2"></i></a>
                    </li>

                </ul>
            </div>
            <a class="ml-4" href="Inicio_Sesion.jsp">Iniciar Sesion</a>
        </nav>

        <div class="container-fluid text-center" id="contenido2">
            <div class="container" id="ctn">
                <h1 id="titulo">PREGUNTAS FRECUENTES</h1>
            </div>

        </div>

        <div class="container" >
            <nav aria-label="breadcrumb" >
                <ol class="breadcrumb" id="bread">
                    <li class="breadcrumb-item"><a href="Inicio.jsp" id="item1">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Preguntas</li>
                </ol>
            </nav>
        </div>

        <div class="container">
            <div class="accordion" id="accordionExample">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="btn btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Pregunta #1
                            </button>
                        </h2>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                        <div class="card-body">
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit assumenda consequatur excepturi vero totam est quia expedita nostrum laboriosam. Quod cupiditate vitae ex incidunt quam labore esse! Ipsam, error quam.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h2 class="mb-0">
                            <button class="btn btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Pregunta #2
                            </button>
                        </h2>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                        <div class="card-body">
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit assumenda consequatur excepturi vero totam est quia expedita nostrum laboriosam. Quod cupiditate vitae ex incidunt quam labore esse! Ipsam, error quam.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h2 class="mb-0">
                            <button class="btn btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Pregunta #3
                            </button>
                        </h2>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                        <div class="card-body">
                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit assumenda consequatur excepturi vero totam est quia expedita nostrum laboriosam. Quod cupiditate vitae ex incidunt quam labore esse! Ipsam, error quam.
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="text-center text-lg-start bg-light text-dark mt-5" id="footer">
            <!-- Section: Social media -->
            <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom" id="foter seccion">
                <!-- Left -->
                <div class="me-5 d-none d-lg-block">
                    <span>Get connected with us on social networks:</span>
                </div>
                <!-- Left -->

                <!-- Right -->
                <div>
                    <a href="" class="me-4 text-reset" >
                        <i class="fab fa-facebook-f" id="ic"></i>
                    </a>
                    <a href="" class="me-4 text-reset" >
                        <i class="fab fa-twitter" id="ic"></i>
                    </a>
                    <a href="" class="me-4 text-reset" >
                        <i class="fab fa-google" id="ic"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-instagram" id="ic"></i>
                    </a>
                    <a href="" class="me-4 text-reset" >
                        <i class="fab fa-linkedin" id="ic"></i>
                    </a>
                    <a href="" class="me-4 text-reset" >
                        <i class="fab fa-github" id="ic"></i>
                    </a>
                </div>
                <!-- Right -->
            </section>
            <!-- Section: Social media -->

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <a href="Inicio.jsp" id="logo1"><img class="img-thumbnail" src="imgs/logo2.png" alt="alt" id="logo"/></a>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Productos
                            </h6>
                            <p>
                                <a href="#!" class="" id="link1">Acuarelas</a>
                            </p>
                            <p>
                                <a href="#!" class=""  id="link1">Pinceles</a>
                            </p>
                            <p>
                                <a href="#!" class=""  id="link1">Colores</a>
                            </p>
                            <p>
                                <a href="#!" class=""  id="link1">Plantillas</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Informacion
                            </h6>
                            <p>
                                <a href="#!" class="" id="link1">Contactenos</a>
                            </p>
                            <p>
                                <a href="#!" class="" id="link1">Formas de Pago</a>
                            </p>
                            <p>
                                <a href="#!" class="" id="link1">Ofertas</a>
                            </p>
                            <p>
                                <a href="#!" class="" id="link1">Lo mas Vendido</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Contactenos
                            </h6>
                            <p><i class="fas fa-home me-3"></i> AV...</p>
                            <p>
                                <i class="fas fa-envelope me-3"></i>
                                info@example.com
                            </p>
                            <p><i class="fas fa-phone me-3"></i> 99999999999</p>
                            <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->

            <!-- Copyright -->
            <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">

                © Copyright 2021 - Todos los derechos reservados Sahara Arte Lima-Perú
            </div>
            <!-- Copyright -->
        </footer>
    </body>
</html>
