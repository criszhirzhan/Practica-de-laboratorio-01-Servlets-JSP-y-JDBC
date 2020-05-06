<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<body>
	<c:set var="p1" value="${requestScope['telefono']}" />

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!-- Brand/logo -->



		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbardrop" data-toggle="dropdown"> <img
				src="/ProyectoDAO/config/images/img_avatar2.png" alt="logo"
				style="width: 40px;">

		</a>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#section41">Perfil</a> <a
					class="dropdown-item" href="#section42">Cerrar sesion</a>
			</div></li>






		<!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#">Mensajes</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Contactos</a>
			</li>

		</ul>
	</nav>


	<div class="container">
		<p>Registrar nuevo contacto</p>

		<a href="/ProyectoDAO/IndexController"><button type="button"
				class="btn btn-secondary">Registrar</button></a>


	</div>

	<div class="container mt-3">


		<form action="/ProyectoDAO/Buscar" method="POST">
			<div class="custom-control custom-radio custom-control-inline">
				<input type="radio" class="custom-control-input" id="customRadio"
					name="opcion" value="cedula"> <label
					class="custom-control-label" for="customRadio">Buscar por
					cedula</label>
			</div>
			<div class="custom-control custom-radio custom-control-inline">
				<input type="radio" class="custom-control-input" id="customRadio2"
					name="opcion" value="correo"> <label
					class="custom-control-label" for="customRadio2">Buscar por
					correo</label>
			</div>

			<div class="input-group mb-3">
				<div class="input-group-prepend">

					<button value="buscar" name="Buscar" class="btn btn-outline-primary" type="button">Buscar</button>
				</div>
				<input type="text" class="form-control"
					placeholder="Ingrese los datos...">
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
					<th>Accion</th>
				</tr>
			</thead>
			<tbody id="myTable">

				<c:forEach var="telf" items="${p1}">
					<tr>
						<td>${telf.id_user}</td>
						<td>${telf.id_user}<a href=""><img width="25px"
								height="25px"
								src="https://img.icons8.com/flat_round/64/000000/secured-letter--v1.png" /></a></td>
						<td>${telf.tipo}</td>
						<td>${telf.operadora}</td>
						<td>${telf.numero}<a href=""><img width="25px"
								height="25px"
								src="https://img.icons8.com/ultraviolet/40/000000/phone.png" /></a>


						</td>
						<td><a href="/ProyectoDAO/EditarContacto?id=${telf.telf_id}"
							class="btn btn-warning">Editar</a> <a
							href="/ProyectoDAO/EliminarContacto?id=${telf.telf_id}"
							class="btn btn-danger">Eliminar</a></td>
					</tr>



				</c:forEach>


			</tbody>
		</table>
	</div>





</body>
</html>
