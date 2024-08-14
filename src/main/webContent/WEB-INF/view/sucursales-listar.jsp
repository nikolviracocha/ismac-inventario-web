<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sucursales</title>
</head>
<body>

	<h1>sucursales</h1>
	
	<table>
		<thead>
			<tr> 
				<th>idsucursales</th>
				<th>Nombre</th>
				<th>Dirección</th>
				<th>Teléfono</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${sucursales}"> 
				<tr>
					<td><c:out value="${item.idsucursales}"/></td>
					<td><c:out value="${item.nombre}"/></td>
					<td><c:out value="${item.direccion}"/></td>
					<td><c:out value="${item.telefono}"/></td>
					<td>
						<a href="/sucursales/findOne?idsucursales=${item.idsucursales}&opcion=1">
							<button>Actualizar</button>
						</a>
						<a href="/sucursales/del?idsucursales=${item.idsucursales}">
							<button>Eliminar</button>
						</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>
