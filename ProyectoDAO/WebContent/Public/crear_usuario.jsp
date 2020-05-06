<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../config/styles/stylesCrUser.css">
</head>
<body>




<div class="contenedor">
<form action="/ProyectoDAO/crearUsuario" method="POST">
  <div class="container">
    <h1>Registro</h1>
    <p>Por favor complete este formulario para crear una cuenta.</p>
    <hr>

	<label for="cedula"><b>Cedula</b></label>
    <input type="text" placeholder="Ingresar cedula" name="cedula" required>
    
    <label for="nombres"><b>Nombres</b></label>
    <input type="text" placeholder="Ingresar nombres" name="nombres" required>
    
    <label for="apellidos"><b>Apellidos</b></label>
    <input type="text" placeholder="Ingresar apellidos" name="apellidos" required>
    
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Ingresar email" name="email" required>

    <label for="psw"><b>Contraseña</b></label>
    <input type="password" placeholder="Ingresar contraseña" name="psw" required>

    <label for="psw-repeat"><b>Repetir Contraseña</b></label>
    <input type="password" placeholder="Repetir contraseña" name="psw-repeat" required>
    <hr>
    
    <button type="submit" class="registerbtn" name="registrarUsr" value="RegistrarUsr">Registrar</button>
  </div>
  
  <div class="container signin">
    <p>¿Ya tienes una cuenta? <a href="login.jsp">Iniciar Sesion</a>.</p>
  </div>
</form>

</div>




</body>
</html>