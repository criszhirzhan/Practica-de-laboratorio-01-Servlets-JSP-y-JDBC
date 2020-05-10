<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link rel="stylesheet" href="/ProyectoDAO/config/styles/stylesLogin.css"
	type="text/css">

</head>
<body>
	<div>

		<div id="header">
			<nav id="nav">
				<ul>
					<li><a href="/ProyectoDAO/Public/index.html">Home</a></li>
					<li><a href="/ProyectoDAO/Public/login.jsp">Iniciar Sesion</a></li>
					<li><a href="/ProyectoDAO/Public/crear_usuario.jsp">Registrarse</a></li>
				</ul>
			</nav>


		</div>
		</div>
		<br>


		<div class="cuerpo">

			<div class="contenido">
				<form action="/ProyectoDAO/iniciarSesion" method="POST">

					<div class="imgcontainer">
						<img src="/ProyectoDAO/config/images/img_avatar2.png" alt="Avatar"
							class="avatar">
					</div>

					<div class="container">
						<label for="correo"><b>Correo</b></label> <input type="text"
							placeholder="Ingrese Correo" name="correo" required> <label
							for="contraseña"><b>Contraseña</b></label> <input type="password"
							placeholder="Ingrese Contraseña" name="contrasena" required>

						<button type="submit" name="accion" value="Ingresar">Ingresar</button>

					</div>

					
				</form>
			</div>


		</div>


</body>
</html>
