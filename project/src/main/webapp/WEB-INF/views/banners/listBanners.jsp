<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <spring:url value="/resources" var="resourcesPath"/>
    <spring:url value="/banners/create" var="create"/>
    <spring:url value="/banners/edit" var="update"/>
    <spring:url value="/banners/delete" var="delete"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Listado de imagenes del banner</title>
    <link href="${resourcesPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${resourcesPath}/bootstrap/css/theme.css" rel="stylesheet">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>

<body>

<jsp:include page="../includes/menu.jsp"></jsp:include>

<div class="container theme-showcase" role="main">

    <h3>Listado de imagenes del Banner</h3>

    <c:if test="${msg!=null}">
        <div class="alert alert-success" role="alert"> ${msg}</div>
    </c:if>

    <c:if test="${msgDelete!=null}">
        <div class="alert alert-success" role="alert"> ${msgDelete}</div>
    </c:if>

    <a href="${create}" class="btn btn-success" role="button" title="Nuevo Banner" >Nuevo</a><br><br>

    <div class="table-responsive">
        <table class="table table-hover table-striped table-bordered">
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Fecha Publicacion</th>
                <th>Nombre Archivo</th>
                <th>Status</th>
                <th>Opciones</th>
            </tr>
            <tr>
        <c:if test="${banners == null}">
            <div class="alert alert-success" role="alert">No hay banners</div>
        </c:if>
        <c:forEach var="banner" items="${banners}">
        <tr>
            <td>${banner.id}</td>
            <td>${banner.titulo}</td>
            <td>${banner.fecha}</td>
            <td>${banner.archivo}</td>
            <td> <c:choose>
                <c:when test="${banner.status eq 'Activo'}">
                    <span class="label label-success">Activo</span>
                </c:when>
             <c:otherwise>
                    <span class="label label-danger">Inactivo</span>
            </c:otherwise>
                </c:choose>
            </td>
            <td>
                 <a href="${update}/${banner.id}" class="btn btn-success btn-sm" role="button" title="Edit" ><span class="glyphicon glyphicon-pencil"></span></a>
                 <a href="${delete}/${banner.id}" onclick='return confirm("¿Estas seguro?")' class="btn btn-danger btn-sm" role="button" title="Eliminar"><span class="glyphicon glyphicon-trash"></span></a>
            </td>
        </tr>
        </c:forEach>
        </table>
    </div>
    <hr class="featurette-divider">

    <jsp:include page="../includes/footer.jsp"></jsp:include>

</div> <!-- /container -->

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
