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
				<h1 id="title">Agenda Telefonica</h1>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="/ProyectoDAO/IndexController?id=3" id="contact-link"><span
							class="icon solid fa-envelope">Contactos</span></a></li>
					<li><a href="/ProyectoDAO/Public/index.html" id="top-link"><span
							class="icon solid fa-home">Home</span></a></li>
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
				<div class="container mt-3">



					<form action="/ProyectoDAO/Buscar?id=1" method="POST">
						<div class="input-group mb-3 input-group-sm">
							<div class="input-group-prepend">
								<button class="input-group-text" name="buscarCorreo"
									value="correoB" type="submit">Buscar</button>

							</div>
							<input type="text" class="form-control" name="correo"
								placeholder="Buscar por correo.....">
						</div>
					</form>




					<form action="/ProyectoDAO/Buscar?id=2" method="POST">
						<div class="input-group mb-3 input-group-sm">
							<div class="input-group-prepend">
								<button class="input-group-text" name="buscarCed"
									value="cedulaB" type="submit">Buscar</button>

							</div>
							<input type="text" class="form-control" name="cedula"
								placeholder="Buscar por cedula.....">
						</div>
					</form>






					<br>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Nombres</th>
								<th>Email</th>
								<th>Tipo</th>
								<th>Operadora</th>
								<th>Numero</th>
							</tr>
						</thead>
						<tbody id="myTable">

							<c:forEach var="telf" items="${p1}">
								<tr>
									<td>${telf.nombres} ${telf.apellidos}</td>
									<td>${telf.correo}       <a href=""><img width="25px"
											height="25px"
											src="https://img.icons8.com/flat_round/64/000000/secured-letter--v1.png" /></a></td>
									<td>${telf.tipo}</td>
									<td>${telf.operadora}</td>
									<td>${telf.numero}    <a href=""><img width="25px"
											height="25px"
											src="https://img.icons8.com/ultraviolet/40/000000/phone.png" /></a>
									</td>
								</tr>

							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</section>

	</div>
</body>
</html>