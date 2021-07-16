<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Inicio</title>
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

        <nav class="navbar navbar-expand-lg">
            <a class="navbar-brand" href="#">Arti Center</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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

        <div class="jumbotron content">
            <div class="w-50" id="texto"> 
                <h1 class="display-4">Lorem Ipsum</h1>
                <p class="lead">This is a simple hero unit, a simple jumbotron-style component </p>
                <p class="lead">for calling extra attention to featured content or information.</p>
                <hr class="my-4">
                <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
            </div>


            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#staticBackdrop" id="boton">
                Registrese &LongRightArrow;
            </button>
            <div id="img1">
                <img id="imagen1" src="imgs/gif3.gif" alt=""/>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" data-delay="8000">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Registrese con sus Datos</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="Prueba" method="post" id="form1">
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="input-group flex-nowrap">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="addon-wrapping1"><i class="bi bi-people-fill"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="name" placeholder="Ingrese su nombre" aria-label="nombre" aria-describedby="addon-wrapping1">
                                </div><br>
                                <div class="input-group flex-nowrap">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="addon-wrapping2"><i class="bi bi-geo-alt-fill"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="dire" placeholder="Ingrese su direccion" aria-label="direccion" aria-describedby="addon-wrapping2">
                                </div><br>
                                <div class="input-group flex-nowrap">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="addon-wrapping3"><i class="bi bi-envelope-fill"></i></span>
                                    </div>
                                    <input type="email" class="form-control" name="corr" placeholder="Ingrese su correo" aria-label="correo" aria-describedby="addon-wrapping3">
                                </div><br>
                                <div class="input-group flex-nowrap">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="addon-wrapping3"><i class="bi bi-phone-fill"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="tel" placeholder="Ingrese su telefono / celular" aria-label="telefono" aria-describedby="addon-wrapping3">
                                </div><br>
                                <div class="input-group flex-nowrap">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="addon-wrapping4"><i class="bi bi-person-circle"></i></span>
                                    </div>
                                    <input type="text" class="form-control" name="usu" placeholder="Ingrese su usuario" aria-label="usuario" aria-describedby="addon-wrapping4">
                                </div><br>
                                <div class="input-group flex-nowrap">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="addon-wrapping5"><i class="bi bi-lock-fill"></i></span>
                                    </div>
                                    <input type="password" class="form-control" name="contra" placeholder="Ingrese su contraseña" aria-label="contraseña" aria-describedby="addon-wrapping5">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary" name="accion" value="Registrar">Registrar</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <!--<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="imgs/lol1.jpg" class="d-block" alt="..." id="slide">
                </div>
                <div class="carousel-item">
                    <img src="imgs/" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="imgs/" class="d-block w-100" alt="...">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>-->

        <h2 class="mt-2 container"><i>Pintar, Dibujar y escribir</i></h2>


        <a href="#" id="card1">
            <div class="card mb-3" style="max-width: 750px;" id="card">
                <div class="row no-gutters mt-0">
                    <div class="col-md-4" >
                        <img src="imgs/gif4.gif" alt="..." id="logo2">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Example heading <span class="badge badge-secondary">New</span></h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <button class="btn btn-success">Saber mas</button>
                        </div>
                    </div>
                </div>
            </div>
        </a>

        <div class="card-deck" id="cartas">
            <a href="#" class="card" id="card2">
                <div>
                    <img src="imgs/gif4.gif" class="card-img-top" alt="..." >
                    <div class="card-body">
                        <h5 class="card-title">2</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        <button class="btn btn-success">Saber mas</button>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
            </a>

            <a class="card" href="#" id="card2">
                <div>
                    <img src="imgs/gif4.gif" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">3</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                        <button class="btn btn-success">Saber mas</button>
                    </div>
                    <div class="card-footer mt-4">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
            </a>

        </div>


        <!-- Footer -->
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
                            <a href="Inicio.jsp" id="logo1"><img class="img-thumbnail" src="imgs/logo2.png" alt="alt" id="logo"/></a><br>
                            <div class="icon-group ">
                                <i class="fab fa-cc-visa" id="pay"></i>
                                <i class="fab fa-cc-mastercard" id="pay"></i>
                                <i class="bi bi-credit-card" id="pay"></i>
                            </div>

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
        <!-- Footer -->

    </body>
</html>
