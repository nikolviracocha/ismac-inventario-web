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

    <h1>Sucursales</h1>
    <button onclick="window.location.href='${pageContext.request.contextPath}/sucursales/findOne?opcion=1'; return false;">Agregar</button>
    
        <table>
    <tr>
        <th>ID Sucursal</th>
        <th>Nombre</th>
        <th>Dirección</th>
        <th>Teléfono</th>
        <th>Acciones</th>
    </tr>
    <c:forEach var="sucursal" items="${sucursales}">
        <tr>
            <td>${sucursal.idsucursales}</td>
            <td>${sucursal.nombre}</td>
            <td>${sucursal.direccion}</td>
            <td>${sucursal.telefono}</td>
            <td>
              <button onclick="window.location.href='${pageContext.request.contextPath}/sucursales/findOne?idsucursales=${sucursal.idsucursales}&opcion=1'; return false;">
                        Actualizar																									
					</button>
					
		<button onclick="window.location.href='/ismac-inventario-web/sucursales/del?idsucursales=${sucursal.idsucursales}'; return false;">
    Eliminar
</button>
		
</button>
					

            </td>
        </tr>
    </c:forEach>
</table>
    
  