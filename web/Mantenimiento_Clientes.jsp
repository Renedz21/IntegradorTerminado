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

        <title>Menu</title>
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
        <%Object[] fila = (Object[]) session.getAttribute("fila");%>
        <main>
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
                            <button class="btn btn-link text-decoration-none text-dark" type="submit" name="acc" value="Entrarl"><i class="bi me-2 bi-people-fill"></i>Clientes</button>
                        </form>
                    </li>

                    <li class="nav-item">
                        <form action="Articulo_Control" method="post">
                            <button class="btn btn-link text-decoration-none" type="submit" name="acc" value="Entrar2">
                                <i class="bi me-2 bi-people-fill"></i>Articulos</button>
                        </form>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-link" href="Inicio.jsp"><i class="bi me-2 bi-arrow-bar-left"></i>Volver al Inicio</a>
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
