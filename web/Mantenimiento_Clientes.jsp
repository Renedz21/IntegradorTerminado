<%-- 
    Document   : Mantenimiento_Clientes
    Created on : 22/06/2021, 07:22:04 PM
    Author     : Microsoft
--%>

<%@page import="Controladores.Cliente_Presentador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    </head>
    <body>
        <%Object[] fila = (Object[]) session.getAttribute("fila");%>
        <main>
            <div class="side flex-shrink-0 p-3" style="width: 230px;">
                <p class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
                    <span class="fs-5 fw-semibold">Bienvenido, <%= fila[0]%><br>
                    </span>
                </p>
                <ul class="list-unstyled ps-0">
                    <li class="mb-1">
                        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                                data-bs-target="#home-collapse" aria-expanded="true">
                            Empleados
                        </button>
                        <div class="collapse show" id="home-collapse">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li>
                                    <form action="Empleado_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar">
                                            Mantenimiento
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <form action="Empleado_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar">
                                            Mantenimiento
                                        </button>
                                    </form>
                                </li>
                                <li>
                                    <form action="Empleado_Control" method="post">
                                        <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar">
                                            Mantenimiento
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
                                <li><a href="#" class="link-dark rounded">Mantenimiento</a></li>
                                <li><a href="#" class="link-dark rounded">Buscar</a></li>
                                <li><a href="#" class="link-dark rounded">Listar</a></li>
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
                                <li><a href="#" class="link-dark rounded">Mantenimiento</a></li>
                                <li><a href="#" class="link-dark rounded">Buscar</a></li>
                                <li><a href="#" class="link-dark rounded">Listar</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="border-top my-3"></li>
                    <li class="mb-1">
                        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                                data-bs-target="#account-collapse" aria-expanded="false">
                            Ventas
                        </button>
                        <div class="collapse" id="account-collapse">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li><a href="#" class="link-dark rounded">New...</a></li>
                                <form action="Empleado_Control" method="post">
                                    <button class="entrar btn btn-link link-dark text-decoration-none rounded" type="submit" name="acc" value="Entrar">
                                        Mantenimiento
                                    </button>
                                </form>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="b-example-divider"></div>
            <% Cliente_Presentador cliPer = (Cliente_Presentador) session.getAttribute("cliPer");%>

            <form method="post" action="Cliente_Control" class="w-100 p-4" id="form">

                <% Object[] f = cliPer.getFil();%>

                <h1>MANTENIMIENTO DE CLIENTES</h1><br>
                
                <input class="form-control" type="text" name="id" value="<%= f[0]%>" placeholder="Ingrese el ID del cliente"/><br>
                <input class="form-control" type="text" name="dni" value="<%= f[1]%>" placeholder="Ingrese su DNI"/><br>
                <input class="form-control" type="text" name="name" value="<%= f[2]%>" placeholder="Ingrese su nombre"/><br>
                <input class="form-control" type="text" name="dire" value="<%= f[3]%>" placeholder="Ingrese su direccion"/><br>
                <input class="form-control" type="text" name="telf" value="<%= f[4]%>" placeholder="Ingrese su telefono"/><br>
                <input class="form-control" type="email" name="mail" value="<%= f[5]%>" placeholder="Ingrese su correo"/><br>
                <input class="form-control" type="text" name="usser" value="<%= f[6]%>" placeholder="Ingrese su usuario"/><br>
                <input class="form-control" type="password" name="pass" value="<%= f[7]%>" placeholder="Ingrese una contraseña"/><br>

                <input class="btn btn-info" type="submit" name="acc" value="Grabar">
                <input class="btn btn-success" type="submit" name="acc" value="Actualizar">
                <input class="btn btn-secondary" type="submit" name="acc" value="Buscar">
                <input class="btn btn-warning" type="submit" name="acc" value="Listar">
                <input class="btn btn-danger" type="submit" name="acc" value="Eliminar">
                <input class="btn btn-primary" type="submit" name="acc" value="Limpiar">
                <hr>
                <h4><%= cliPer.getMensaje()%></h4>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">DNI</th>
                            <th scope="col">NOMBRE</th>
                            <th scope="col">DIRECCION</th>
                            <th scope="col">TELEFONO</th>
                            <th scope="col">CORREO</th>
                            <th scope="col">USUARIO</th>
                            <th scope="col">CONTRASEÑA</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (int i = 0; i < cliPer.getLista().size(); i++) { %>
                        <% Object[] fi1 = (Object[]) cliPer.getLista().get(i);%>
                        <tr>
                            <td><%= fi1[0]%></td>
                            <td><%= fi1[1]%></td>
                            <td><%= fi1[2]%></td>
                            <td><%= fi1[3]%></td>
                            <td><%= fi1[4]%></td>
                            <td><%= fi1[5]%></td>
                            <td><%= fi1[6]%></td>
                            <td><%= fi1[7]%></td>
                        </tr>
                    </tbody>
                    <% }%>
                </table>
            </form>
        </main>
    </body>
</html>
