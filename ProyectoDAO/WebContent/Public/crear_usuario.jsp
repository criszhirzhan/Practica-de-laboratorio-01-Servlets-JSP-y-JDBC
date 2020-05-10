<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../config/styles/stylesCrUser.css">
</head>
<body>
	<div>

		<div id="header">


			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="/ProyectoDAO/Public/login.jsp">Iniciar Sesion</a></li>
					<li><a href="/ProyectoDAO/Public/crear_usuario.jsp">Registrarse</a></li>
				</ul>
			</nav>


		</div>
	</div>
	<br>
	
	

	<div class="cuerpo">
		<div class="contenedor">
			<form action="/ProyectoDAO/crearUsuario" method="POST">
				<div class="container">
					<p>Por favor complete este formulario para crear una cuenta.</p>
					<hr>

					<label for="cedula"><b>Cedula</b></label> <input type="text"
						placeholder="Ingresar cedula" name="cedula" required> <label
						for="nombres"><b>Nombres</b></label> <input type="text"
						placeholder="Ingresar nombres" name="nombres" required> <label
						for="apellidos"><b>Apellidos</b></label> <input type="text"
						placeholder="Ingresar apellidos" name="apellidos" required>

					<label for="email"><b>Email</b></label> <input type="text"
						placeholder="Ingresar email" name="email" required> <label
						for="psw"><b>Contraseña</b></label> <input type="password"
						placeholder="Ingresar contraseña" name="psw" required> 
					<hr>

					<button type="submit" class="registerbtn" name="registrarUsr"
						value="RegistrarUsr">Registrar</button>
				</div>

			</form>

		</div>

	</div>

</body>
</html>