<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<body>
    <div class="container mt-4">
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#clientes">Clientes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#usuarios">Usuarios</a>
            </li>
        </ul>

        <div class="tab-content mt-3">
            <div id="clientes" class="tab-pane fade show active">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Clientes</h5>
                        <h6 class="card-subtitle mb-2 text-muted">En este panel podrás gestionar los datos de los usuarios clientes del sistema</h6>
                        <form action="Controlador?menu=Clientes" method="POST">
                            <div class="form-group">
                                <label for="txtdocumento">Documento</label>
                                <input type="number" class="form-control" id="txtdocumento" name="txtdocumento" value="${usuarioSeleccionado.getDocumento()}">
                                <small class="form-text text-muted">Ingrese el número de documento sin espacios ni caracteres especiales</small>
                            </div>
                            <div class="form-group">
                                <label for="txtnombre">Nombre</label>
                                <input type="text" class="form-control" id="txtnombre" name="txtnombre" value="${usuarioSeleccionado.getNombre()}">
                            </div>
                            <div class="form-group">
                                <label for="txtcorreo">Correo</label>
                                <input type="text" class="form-control" id="txtcorreo" name="txtcorreo" value="${usuarioSeleccionado.getCorreo()}">
                            </div>
                            <div class="form-group">
                                <label for="txtpassword">Password</label>
                                <input type="text" class="form-control" id="txtpassword" name="txtpassword" value="${usuarioSeleccionado.getPassword()}">
                            </div>
                            <div class="form-group">
                                <label for="txtrol">Rol</label>
                                <select class="form-control form-control-sm" id="txtrol" name="txtrol">
                                    <option>Cliente</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="txtestado">Estado</label>
                                <select class="form-control form-control-sm" id="txtestado" name="txtestado">
                                    <option>Activo</option>
                                    <option>Inactivo</option>
                                </select>
                            </div>

                            <input type="submit" class="btn btn-primary" name="accion" value="Agregar">
                            <input type="submit" class="btn btn-success" name="accion" value="Actualizar">
                        </form>
                    </div>
                </div>
            </div>

            <div id="usuarios" class="tab-pane fade">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Documento</th>
                                <th scope="col">Nombres</th>
                                <th scope="col">Correo</th>
                                <th scope="col">Contraseña</th>
                                <th scope="col">Rol</th>
                                <th scope="col">Estado</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="usuario" items="${usuarios}">
                                <tr>
                                    <th scope="row">${usuario.getId()}</th>
                                    <td>${usuario.getDocumento()}</td>
                                    <td>${usuario.getNombre()}</td>
                                    <td>${usuario.getCorreo()}</td>
                                    <td>${usuario.getPassword()}</td>
                                    <td>${usuario.getRol()}</td>
                                    <td>${usuario.getEstado()}</td>
                                    <td>
                                        <a class="btn btn-warning" href="Controlador?menu=Clientes&accion=Cargar&id=${usuario.getId()}">Editar</a>
                                        <a class="btn btn-danger" href="Controlador?menu=Clientes&accion=Eliminar&id=${usuario.getId()}">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
