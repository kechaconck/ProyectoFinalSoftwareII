<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Sistema de ventas</title>
    <style>
        @media print{
            .seccion1, .btn, .columna{
                display:none;
            }
        }

        .card-header label {
            margin-bottom: 0;
        }

        .card-header input[type="text"] {
            width: calc(100% - 100px);
        }

        .card-header input[type="submit"] {
            width: 100px;
        }
    </style>
</head>
<body>
<div class="container mt-3">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#datosCliente">Datos Cliente</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#datosProducto">Datos Producto</a>
        </li>
    </ul>

    <div class="tab-content">
        <div id="datosCliente" class="tab-pane fade show active">
            <div class="card mt-3">
                <div class="card-header">
                    <h5 class="card-title">Datos Cliente</h5>
                    <form method="post" action="Controlador?menu=Ventas">
                        <div class="form-row">
                            <div class="col-md-4">
                                <input type="number" name="documentocliente" class="form-control" placeholder="Documento Cliente" value="${cliente.getDocumento()}">
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="nombrecliente" class="form-control" placeholder="Nombre Cliente" value="${cliente.getNombre()}">
                            </div>
                        </div>
                        <input type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-dark mt-3">
                    </form>
                </div>
            </div>
        </div>
        <div id="datosProducto" class="tab-pane fade">
            <div class="card mt-3">
                <div class="card-header">
                    <h5 class="card-title">Datos Producto</h5>
                    <form action="Controlador?menu=Ventas" method="post">
                        <div class="form-row">
                            <div class="col-md-4">
                                <input type="number" name="codigoproducto" class="form-control" placeholder="Codigo Producto" value="${productoseleccionado.getCodigo()}">
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="nombreproducto" class="form-control" placeholder="Nombre Producto" value="${productoseleccionado.getNombreProducto()}">
                            </div>
                            <div class="col-md-4 mt-3">
                                <input type="text" name="precioproducto" class="form-control" placeholder="$ 0000.00" value="${productoseleccionado.getPrecio()}">
                            </div>
                            <div class="col-md-8 mt-3">
                                <input type="number" value="1" name="cantidadproducto" class="form-control" placeholder="Cantidad">
                            </div>
                        </div>
                        <input type="submit" name="accion" value="AgregarProducto" class="btn btn-outline-primary mt-3">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>

