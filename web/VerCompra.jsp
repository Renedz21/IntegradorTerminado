<%-- 
    Document   : VerCompra
    Created on : 17/07/2021, 04:10:11 AM
    Author     : Microsoft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sidebars/">
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
        <link href="sidebars.css" rel="stylesheet" type="text/css"/>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/7a636b3642.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <main>
            <%Object[] fila = (Object[]) session.getAttribute("fila");%>
            <div class="side flex-shrink-0 p-3" style="width: 330px;">
                <p class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
                    <a href="Menu.jsp" class="text-decoration-none text-dark"><span class="fs-5 fw-semibold">
                            Bienvenido, <%= fila[0]%><br>
                        </span>
                    </a>
                </p>
                <ul class="list-unstyled ps-0">
                    <li class="mb-1">
                        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                                data-bs-target="#home-collapse" aria-expanded="false">
                            Empleados
                        </button>
                        <div class="collapse " id="home-collapse">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li>
                                    <form action="Empleado_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar2">
                                            Agregar
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <form action="Empleado_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar">
                                            Listar
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <form action="Empleado_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar3">
                                            Buscar
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <form action="Empleado_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar4">
                                            Actualizar
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <form action="Empleado_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar5">
                                            Eliminar
                                        </button>
                                    </form>
                                </li>
                                <!--<li><a href="#" class="link-dark rounded">Buscar</a></li>
                                <li><a href="#" class="link-dark rounded">Listar</a></li>-->
                            </ul>
                        </div>
                    </li>
                    <li class="mb-1">
                        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                                data-bs-target="#dashboard-collapse" aria-expanded="false">
                            Clientes
                        </button>
                        <div class="collapse" id="dashboard-collapse">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li>
                                    <form action="Cliente_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar2">
                                            Agregar
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <form action="Cliente_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar">
                                            Listar
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <form action="Cliente_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar3">
                                            Buscar
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <form action="Cliente_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar4">
                                            Actualizar
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <form action="Cliente_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar5">
                                            Eliminar
                                        </button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="mb-1">
                        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                                data-bs-target="#orders-collapse" aria-expanded="false">
                            Articulos
                        </button>
                        <div class="collapse" id="orders-collapse">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li>
                                    <form action="Articulo_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar1">
                                            Agregar
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <form action="Articulo_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar2">
                                            Listar
                                        </button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="border-top my-3"></li>
                    <li class="mb-1">
                        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                                data-bs-target="#account-collapse" aria-expanded="true">
                            Ventas
                        </button>
                        <div class="collapse show" id="account-collapse">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li>
                                    <form action="Articulo_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar4">
                                            Ver ventas realizadas
                                        </button>
                                    </form>
                                </li>

                            </ul>
                        </div>
                    </li>
                    <li class="border-top my-3"></li>
                    <li>
                        <a href="Inicio.jsp" class="nav-link text-dark"><i class="fas fa-chevron-left mr-3"></i> Volver</a>
                    </li>

                </ul>
            </div>
            <script src="sidebars.js" type="text/javascript"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
            </script>

            <div class="b-example-divider"></div>
            
            <form action="Articulo_Control" method="post" class="form" enctype="multipart/form-data">
                <div class="formb">
                    <div class="d-grid gap-2 mb-4">
                        <input class="btn btn-warning" type="submit" name="acc" value="Traer">
                    </div>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">ID COMPRA</th>
                                <th scope="col">ID PAGO</th>
                                <th scope="col">FECHA</th>
                                <th scope="col">MONTO</th>
                                <th scope="col">ESTADO</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="dat" items="${lista}">
                            <tr>
                                <td>${dat.getId()}</td>
                                
                                <td>${dat.getIdpago()}</td>
                                <td>${dat.getFecha()}</td>
                                <td>${dat.getMonto()}</td>
                                <td>${dat.getEstado()}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </form>
            
        </main>
    </body>
</html>