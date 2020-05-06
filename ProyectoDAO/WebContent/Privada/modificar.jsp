<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="/ProyectoDAO/config/styles/stylesRMTelf.css">
</head>
<body>
	<c:set var="p1" value="${requestScope['telefono']}" />

	<div class="contenedor">
		<form action="/ProyectoDAO/EditarContacto" method="POST">
			<div class="container">
				<h1>Modificar contacto:</h1>
				<hr>

				<label for="nombresU"><b>Nombres</b></label> 
				<input type="text"
					placeholder="Editar nombres" name="nombrestext"
					value="${p1.tipo}" required> 
				<label
					for="tipo"><b>Tipo</b></label>
				 <input type="text"
					placeholder="Editar tipo" name="tipotext" value="${p1.tipo}"
					required>
				 <label for="numero"><b>Numero</b></label> 
				 <input
					type="text" placeholder="Editar numero" name="numerotxt"
					value="${p1.numero}" required> <label for="operadora"><b>Operadora</b></label>
				<input type="text" placeholder="Editar operadora"
					name="operadoratxt" value="${p1.operadora}" required>

				<hr>

				<button type="submit" name="modificartelf" value="modificarTelf"
					class="registerbtn">Modificar</button>
			</div>

		</form>

	</div>

</body>
</html>