<%-- 
    Document   : Mantenimiento_Articulos
    Created on : 09/07/2021, 10:51:45 PM
    Author     : Microsoft
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Mantenimiento_Articulos</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <script src="https://kit.fontawesome.com/7a636b3642.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap" rel="stylesheet">
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <link href="sidebar.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sidebars/">
        <script src="sidebars.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    </head>
    <body>
        <main>
            <%Object[] fila = (Object[]) session.getAttribute("fila");%>
            <div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 280px;">
                <a href="#" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
                    <span class="fs-4">Bienvenido, <%= fila[0]%></span>
                </a>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto">
                    <li class="nav-item">
                        <form action="Empleado_Control" method="post">
                            <button class="btn btn-link text-decoration-none" type="submit" name="acc" value="Entrar"><i class="bi me-2 bi-person-bounding-box"></i>Empleados</button>
                        </form>
                    </li>

                    <li class="nav-item active">
                        <form action="Cliente_Control" method="post">
                            <button class="btn btn-link text-decoration-none" type="submit" name="acc" value="Entrarl"><i class="bi me-2 bi-people-fill"></i>Clientes</button>
                        </form>
                    </li>

                    <li class="nav-item">
                        <form action="Articulo_Control" method="post">
                            <button class="btn btn-link text-decoration-none text-dark" type="submit" name="acc" value="Entrar2">
                                <i class="bi me-2 bi-people-fill"></i>Articulos</button>
                        </form>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-link" href="Inicio.jsp"><i class="bi me-2 bi-arrow-bar-left"></i>Volver al Inicio</a>
                    </li>
                </ul>
            </div>
            <div class="b-example-divider"></div>

            <form action="Articulo_Control" method="post" class="w-100 p-4" id="form" enctype="multipart/form-data">

                <h1>MANTENIMIENTO DE ARTICULOS</h1><br>

                <input class="form-control" type="text" name="nombre"  placeholder="Ingrese el nombre del producto"/><br>
                <input class="form-control" type="file" name="foto"  placeholder="Ingrese foto"/><br>
                <input class="form-control" type="text" name="info"  placeholder="Descripcion"/><br>
                <input class="form-control" type="number" name="precio" placeholder="Ingrese el precio"/><br>
                <input class="form-control" type="number" name="stock"  placeholder="Ingrese el stock"/><br>
                <input class="form-control" type="text" name="cat"  placeholder="Ingrese el ID de la categoria"/><br>

                <input class="btn btn-info" type="submit" name="acc" value="Grabar">
                <input class="btn btn-warning" type="submit" name="acc" value="Listar">

                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">NOMBRE</th>
                            <th scope="col">FOTO</th>
                            <th scope="col">DESCRIPCION</th>
                            <th scope="col">PRECIO</th>
                            <th scope="col">STOCK</th>
                            <th scope="col">ID CATEGORIA</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.getId()}</td>
                                <td>${dato.getNombres()}</td>
                                <td>
                                    <img src="Controlador_Img?id=${dato.getId()}" width="50" height="80">
                                </td>
                                <td>${dato.getDescripcion()}</td>
                                <td>${dato.getPrecio()}</td>
                                <td>${dato.getStock()}</td>
                                <td>${dato.getIdCat()}</td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </form>
        </main>
    </body>
</html>
