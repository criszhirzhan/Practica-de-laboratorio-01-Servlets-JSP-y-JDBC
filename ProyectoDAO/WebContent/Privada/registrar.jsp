<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/ProyectoDAO/config/styles/stylesRMTelf.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<c:set var="p1" value="${requestScope['usuarios']}" />

	<div class="contenedor">
		<form action="/ProyectoDAO/RegistrarContacto" method="POST">
			<div class="container">
				<h1>Registrar contacto:</h1>
				<hr>

				<label for="nombresU"><b>Nombre</b></label>
				<div class="container mt-3">
					<select name="usr" class="custom-select mb-3">
						<option value="desconocido"  selected>Seleccionar</option>

						<c:forEach var="usr" items="${p1}">
							<option value="'${usr.cedula}'">${usr.nombres} ${usr.apellidos}</option>
						</c:forEach>

					</select>
				</div>


				<label for="tipo"><b>Tipo</b></label>
				<div class="container mt-3">
					<select name="tip" class="custom-select mb-3">
						<option selected>Seleccionar</option>
						<option value="celular">Celular</option>
						<option value="telefono">Telefono</option>
					</select>
				</div>


				<label for="numero"><b>Numero</b></label> <input type="text"
					placeholder="Ingresar el numero" name="numerotxt" required>


				<label for="operadora"><b>Operadora</b></label> <input type="text"
					placeholder="Ingresar operadora" name="operadoratxt" required>

				<hr>

				<button type="submit"  value="registrarTelf" name="registrartelf"  class="registerbtn">Registrar</button>
			</div>

		</form>

	</div>

</body>
</html>