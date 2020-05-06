<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"  href="/ProyectoDAO/config/styles/stylesLogin.css" type="text/css">
</head>
<body>

<div class="contenido">
<h2 style="text-align: center">Iniciar Sesion</h2>
<form action="/ProyectoDAO/iniciarSesion" method="POST" >

  <div class="imgcontainer">
    <img src="/ProyectoDAO/config/images/img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="correo"><b>Correo</b></label>
    <input type="text" placeholder="Ingrese Correo" name="correo" required>

    <label for="contraseña"><b>Contraseña</b></label>
    <input type="password" placeholder="Ingrese Contraseña" name="contrasena" required>
        
    <button type="submit" name="accion" value="Ingresar" >Ingresar</button>

  </div>

  <div class="container" style="background-color:#f1f1f1">
    <span class="psw"> ¿No tienes una cuenta? <a href="/ProyectoDAO/Public/crear_usuario.jsp">Registrarse</a></span>
  </div>
</form>
</div>
</body>
</html>
    