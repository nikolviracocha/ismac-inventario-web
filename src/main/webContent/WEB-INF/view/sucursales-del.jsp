<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Eliminar Sucursal</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px 40px;
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        .warning {
            font-size: 18px;
            color: #d9534f;
            margin-bottom: 20px;
        }

        .button-group {
            display: flex;
            justify-content: center;
            gap: 20px; /* Espacio entre los botones */
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-submit {
            background-color: #d9534f;
            color: #ffffff;
        }

        .btn-submit:hover {
            background-color: #c9302c;
        }

        .btn-cancel {
            background-color: #5bc0de;
            color: #ffffff;
        }

        .btn-cancel:hover {
            background-color: #31b0d5;
        }
    </style>
</head>
<body>
    <section class="px-5 py-5">
        <div class="container">
            <h1 class="text-center">Eliminar Sucursal</h1>
            <div class="alert alert-warning text-center" role="alert">
                <strong>¿Desea eliminar esta sucursal?</strong>
            </div>
            <form action="del" method="get" class="text-center">
                <input type="hidden" id="idsucursales" name="idsucursales" value="${sucursales.idsucursales}" />
                <button type="submit" class="btn btn-danger">
                    <i class="fa-solid fa-trash"></i> Eliminar
                </button>
                <button type="button" class="btn btn-secondary" onclick="window.location.href='/ismac-inventario-web/sucursales/findAll'; return false;">
                    <i class="fa-solid fa-ban"></i> Cancelar
                </button>
            </form>
        </div>
    </section>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
