<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <h3><a href="Inicio.jsp" class="text-dark">Arti Center</a></h3>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#content" aria-controls="content" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="content">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="btn" href="Controlador_Producto?accion=home" id="link">SEGUIR COMPRANDO</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container mt-4">
            <h3>Carrito</h3><br>
            <div class="row">
                <div class="col-sm-9">
                    <table class="table table-hover ">
                        <thead class="table-info">
                            <tr class="text-center">
                                <th>ITEM</th>
                                <th>NOMBRES</th>
                                <th>DESCRIPCION</th>
                                <th>PRECIO</th>
                                <th>CANT</th>
                                <th>SUBTOTAL</th>
                                <th>ACCION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="car" items="${carrito}">
                                <tr class="text-center">
                                    <td>${car.getItem()}</td>
                                    <td>${car.getNombre()}</td>
                                    <td>
                                        <img src="Controlador_Img?id=${car.getIdProducto()}" width="100" height="100">
                                        <br>${car.getDesripcion()}

                                    </td>
                                    <td>${car.getPrecio()}</td>
                                    <td>${car.getCantidad()}

                                    </td>
                                    <td>${car.getSubTotal()}</td>
                                    <td>

                                        <a href="Controlador_Producto?accion=Borrar&idp=${car.getIdProducto()}">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-header">
                            <h3>Generar Compra</h3>
                        </div>
                        <div class="card-body">
                            <label>Subtotal: </label>
                            <input value="$${total}0" type="text" readonly="" class="form-control" />
                            <label>Descuento: </label>
                            <input type="text" readonly="" class="form-control" />
                            <label>Total a pagar: </label>
                            <input value="$${total}0"  type="text" readonly="" class="form-control" />
                        </div>
                        <div class="card-footer">
                            <div class="d-grid gap-2">
                                <a href="#" class="btn btn-info">Realizar Pago</a>
                                <a href="Controlador_Producto?accion=GenerarCompra" onclick="print()" class="btn btn-danger">Generar Compra</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
