<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema Inventario - Sucursales</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<nav></nav>

<section class="px-5 py-5">
    <div class="container">
        <h1>Sucursales</h1>
        <div class="container text-center mb-3">
            <button class="btn btn-primary" onclick="window.location.href='/ismac-inventario-web/sucursales/findOne?opcion=1'; return false;">
                <i class="fa-solid fa-plus"></i> Agregar
            </button>
        </div>
        <div class="table-responsive">
            <table id="tablaSucursales"
                   class="table table-striped table-sm"
                   data-height="600"
                   data-search="true"
                   data-pagination="true">
                <thead>
                    <tr>
                        <th>ID Sucursal</th>
                        <th data-field="Nombre" data-sortable="true">Nombre</th>
                        <th data-field="Direccion" data-sortable="true">Dirección</th>
                        <th data-field="Telefono" data-sortable="true">Teléfono</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="sucursal" items="${sucursales}">
                        <tr>
                            <td>${sucursal.idsucursales}</td>
                            <td>${sucursal.nombre}</td>
                            <td>${sucursal.direccion}</td>
                            <td>${sucursal.telefono}</td>
                            <td>
                                <button class="btn btn-success" onclick="window.location.href='/ismac-inventario-web/sucursales/findOne?idsucursales=${sucursal.idsucursales}&opcion=1'; return false;">
                                    <i class="fa-solid fa-pen-to-square"></i> Actualizar
                                </button>
                                <button class="btn btn-danger" onclick="window.location.href='/ismac-inventario-web/sucursales/findOne?idsucursales=${sucursal.idsucursales}&opcion=2'; return false;">
                                    <i class="fa-solid fa-trash"></i> Eliminar
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>

<footer></footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

<script type="text/javascript">
    $(function(){
        $('#tablaSucursales').bootstrapTable({ sortReset: true });
    });
</script>

</body>
</html>


