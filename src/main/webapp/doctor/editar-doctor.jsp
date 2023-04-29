<%-- 
    Document   : editar-doctor
    Created on : 25/08/2022, 08:29:43
    Author     : Juan Pablo Cáceres Enriquez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="es_GT" />
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />        
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css" /> 
        <link rel="icon" href="../assets/images/hospital.jpg">
        <script type="text/javascript" src="../assets/js/099af0269d.js" ></script>
        <link rel="stylesheet" type="text/css" href="../assets/css/hoja-estilo-hospital-entidades.css" />
        <title>Hospital Forest</title>
    </head>

    <body style="background-image: linear-gradient(175deg, #ffffa6 0, #efffa2 25%, #d5f29d 50%, #bde298 75%, #a8d394 100%);">
        <header>
            <h1>Citas</h1>
            <div id="main-header" class="py-2 text-light mt-5">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h1>
                                <i class="fa-solid fa-user-doctor"></i> Control Doctores
                            </h1>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <jsp:include page="../WEB-INF/paginas/comunes/cabecera.jsp" />

        <main>
            <div class="container">
                <div class="row">
                    <div class="col-3    col-md-3">
                    </div>
                    <div class="col-6  col-md-6">
                        <div class="container">
                            <div class="row">
                                <div class="col-4  m-2">
                                    <a class="btn btn-info" href="${pageContext.request.contextPath}/ServletDoctor?accion=listar">
                                        <i class="fa fa-arrow-left"></i> Cancelar/Regresar
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h4>Editar doctor</h4>
                            </div>
                        </div>
                        <div class="card-body bg-light shadow-lg p-3 mb-5 bg-body rounded">
                            <form method="POST" action="${pageContext.request.contextPath}/ServletDoctor" class="was-validated">
                                <div class="modal-body">
                                    <div class="mb-3">
                                        <label for="id" class="col-form-label">Número doctor</label>
                                        <input type="text" class="form-control" id="id" value="${doctor.idDoctor}" name="id" readonly>
                                    </div>                                   
                                    <div class="mb-3">
                                        <div class="btn-group dropstart col-12">
                                            <button class="btn btn-success dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="inside">
                                                Horarios*
                                            </button>
                                            <ul class="dropdown-menu">
                                                <ul class="list-group">
                                                    <c:forEach items="${dataHorario}" var="horario">
                                                        <li class="list-group-item">
                                                            <input type="radio" class="form-check-input" id="horario" name="horario" value="${horario.idHorario}" required>
                                                            <label for="horario" class="form-check-label">${horario.idHorario}</label>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <div class="btn-group dropend col-12">
                                            <button class="btn btn-success dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="inside">
                                                Personas*
                                            </button>
                                            <ul class="dropdown-menu">
                                                <ul class="list-group">
                                                    <c:forEach items="${dataPersona}" var="persona">
                                                        <li class="list-group-item">
                                                            <input type="radio" class="form-check-input" id="persona" name="persona" value="${persona.id}" required>
                                                            <label for="persona" class="form-check-label">${persona.id}  |  ${persona.nombre1}</label>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <div class="btn-group col-12">
                                            <button class="btn btn-success dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="inside">
                                                Especialidad*
                                            </button>
                                            <ul class="dropdown-menu">
                                                <ul class="list-group">
                                                    <c:forEach items="${dataEspecialidad}" var="especialidad">
                                                        <li class="list-group-item">
                                                            <input type="radio" class="form-check-input" id="especialidad" name="especialidad" value="${habitacion.id}" required>
                                                            <label for="especialidad" class="form-check-label">${especialidad.idEspecialidad} |  ${especialidad.nombreEspecialidad}</label>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </ul>
                                        </div>
                                    </div>
                                    <input type="hidden" value="actualizar" name="accion">
                                    <h6>*Campos obligatorios</h6>
                                </div>
                                <div class="container mb-5">
                                    <div class="row">
                                        <div class="col-6 text-center">
                                            <button type="submit" class="btn btn-success">
                                                <i class="fas fa-check"></i> Guardar Cambios
                                            </button>
                                        </div>
                                        <div class="col-6 text-center">
                                            <a class="btn btn-danger" href="${pageContext.request.contextPath}/ServletDoctor?accion=eliminar&id=${doctor.idDoctor}">
                                                <i class="fa fa-trash"></i> Eliminar Registro  
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-3  col-md-3">
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script type="text/javascript" src="../assets/js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap.bundle.js"></script>
</body>
</html>
