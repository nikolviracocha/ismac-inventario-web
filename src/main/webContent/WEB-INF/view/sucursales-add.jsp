<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Sucursal</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<section class="px-5 py-5">
    <div class="container">
        <h1>Agregar Sucursal</h1>
        
        <form action="add" method="post" class="needs-validation" novalidate>
            <input type="hidden" id="idsucursales" name="idsucursales" value="${sucursales.idsucursales}">

            <div class="form-group">
                <label for="nombre" class="form-label">Nombre</label>
                <input class="form-control" type="text" id="nombre" name="nombre" value="${sucursales.nombre}" required>
            </div>
            <div class="form-group">
                <label for="direccion" class="form-label">Dirección</label>
                <input class="form-control" type="text" id="direccion" name="direccion" value="${sucursales.direccion}" required>
            </div>
            <div class="form-group">
                <label for="telefono" class="form-label">Teléfono</label>
                <input class="form-control" type="text" id="telefono" name="telefono" value="${sucursales.telefono}" required>
            </div>

            <br>
            <button class="btn btn-primary" type="submit">Guardar</button>
            <button class="btn btn-secondary" type="button" onclick="window.location.href='/ismac-inventario-web/sucursales/findAll'; return false;">Cancelar</button>
        </form>
    </div>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script>
    (() => {
        'use strict';
        const forms = document.querySelectorAll('.needs-validation');
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    })();
</script>

</body>
</html>
