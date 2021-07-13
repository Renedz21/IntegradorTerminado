<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Productos</title>
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

        <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light" id="contenido1">
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
                    <li class="nav-item active">
                        <a class="btn" href="Controlador_Producto?accion=Carrito" id="link"><i class="bi bi-cart2"></i>
                            (<label style="color: orange">${contador}</label>)Carrito de compras</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container-fluid text-center" id="contenido2">
            <div class="container" id="ctn">
                <h1 id="titulo">PRODUCTOS</h1>
            </div>
        </div>

        <div class="container" >
            <nav aria-label="breadcrumb" >
                <ol class="breadcrumb" id="bread">
                    <li class="breadcrumb-item"><a href="Inicio.jsp" id="item1">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Productos</li>
                </ol>
            </nav>
        </div>

        <div class="container mt-4">
            <div class="row">
                <c:forEach var="p" items="${productos}">
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <label>${p.getNombres()}</label>
                            </div>
                            <div class="card-body">
                                <img src="Controlador_Img?id=${p.getId()}" width="100%" height="250px">
                            </div>
                            <div class="card-footer">
                                <label><b>Descripcion:</b><br> ${p.getDescripcion()}</label><br>
                                <i><b>Precio:</b><br> $.${p.getPrecio()}</i>
                                <div class="botones">
                                    <a href="Controlador_Producto?accion=AgregarCarrito&id=${p.getId()}" class="btn btn-outline-info">Agregar al carrito</a>
                                    <a href="Controlador_Producto?accion=Comprar&id=${p.getId()}" class="btn btn-danger">Comprar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>

        </div>
    </body>
</html>
