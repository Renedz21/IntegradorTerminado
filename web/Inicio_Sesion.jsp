<%-- 
    Document   : Inicio_Sesion
    Created on : 22/06/2021, 06:59:01 PM
    Author     : Microsoft
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Empresa Inicia Sesion</title>
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
        
        <form id="sesion" method="post" action="Sesion_Control">
            <i style="font-size: 57px; margin-left: 43%;" class="bi bi-person-circle"></i>
            <h2 class="text-center">Inicie Sesion</h2>
            
            <div class="form-group">
                <label for="exampleInputEmail1">Usuario</label>
                <input type="text" name="usu" class="form-control" id="exampleInputUsser">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Contraseña</label>
                <input type="password" name="con" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="form-group">
                <a href="#">¿Olvidaste tu contraseña?</a>
            </div>
            <button type="submit" name="accion" value="Entrar" class="btn btn-success btn-block">Continuar</button>
        </form>
    </body>
</html>
