<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Sucursal</title>
</head>
<body>
 
<form action="${pageContext.request.contextPath}/sucursales/add" method="post">

    <!-- Campo oculto para el ID de la sucursal -->
    <input type="hidden" id="idsucursales" name="idsucursales" value="${sucursal.idsucursales}">
    <br/>

    <!-- Campo para el nombre de la sucursal -->
    Nombre
    <input type="text" id="nombre" name="nombre" value="${sucursal.nombre}">
    <br/>

    <!-- Campo para la dirección de la sucursal -->
    Dirección
    <input type="text" id="direccion" name="direccion" value="${sucursal.direccion}">
    <br/>

    <!-- Campo para el teléfono de la sucursal -->
    Teléfono
    <input type="text" id="telefono" name="telefono" value="${sucursal.telefono}">
    <br/>

    <!-- Botones para enviar o cancelar -->
    <button type="submit">Guardar</button>
    <button type="button" onclick="window.location.href='${pageContext.request.contextPath}/sucursales/findAll'; return false;">Cancelar</button>

</form>
</body>
</html>
