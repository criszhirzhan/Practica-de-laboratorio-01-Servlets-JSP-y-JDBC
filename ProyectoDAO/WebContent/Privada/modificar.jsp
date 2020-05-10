<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Prologue by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/ProyectoDAO/config/styles/main.css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="/ProyectoDAO/config/styles/stylesRMTelf.css">

</head>
<body class="is-preload">
	<c:set var="p1" value="${requestScope['telefono']}" />

	<!-- Header -->
	<div id="header">

		<div class="top">

			<!-- Logo -->
			<div id="logo">
				<span class="image avatar48"><img
					src="/ProyectoDAO/config/images/avatar.jpg" alt="" /></span>
				<h1 id="title">Jane Doe</h1>
				<p>Hyperspace Engineer</p>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="/ProyectoDAO/IndexController?id=2"
						id="contact-link"><span class="icon solid fa-envelope">Contactos</span></a></li>
					<li><a href="" id="top-link"><span
							class="icon solid fa-home">Cerrar sesion</span></a></li>
				</ul>
			</nav>

		</div>

		<div class="bottom">

			<!-- Social Icons -->
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-github"><span
						class="label">Github</span></a></li>
				<li><a href="#" class="icon brands fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon solid fa-envelope"><span
						class="label">Email</span></a></li>
			</ul>

		</div>

	</div>

	<!-- Main -->
	<div id="main">


		<!-- Contact -->
		<section id="contact" class="four">
			<div class="container">


				<div class="contenido">
					<div class="contenedor">
						<form action="/ProyectoDAO/EditarContacto" method="POST">
							<div class="container">
								<h1>Modificar contacto:</h1>
								<hr>
								 <label for="tipo"><b>Tipo</b></label>
								<input type="text" placeholder="Editar tipo" name="tipotext"
									value="${p1.tipo}" required> <label for="numero"><b>Numero</b></label>
								<input type="text" placeholder="Editar numero" name="numerotxt"
									value="${p1.numero}" required> <label for="operadora"><b>Operadora</b></label>
								<input type="text" placeholder="Editar operadora"
									name="operadoratxt" value="${p1.operadora}" required>

								<hr>

								<button type="submit" name="modificartelf" value="modificarTelf"
									class="registerbtn">Modificar</button>
							</div>

						</form>

					</div>


				</div>

			</div>
		</section>

	</div>
</body>
</html>