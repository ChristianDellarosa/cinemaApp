<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html lang="en">
<head>
    <spring:url value="/resources" var="resourcesPath"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Detalles de la pelicula</title>

    <link href="${resourcesPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${resourcesPath}/bootstrap/css/theme.css" rel="stylesheet">

</head>

<body>
<jsp:include page="includes/menu.jsp"></jsp:include>

<div class="container theme-showcase" role="main">
    <!-- Marketing messaging -->
    <div class="container marketing">

        <div class="page-header">
            <h2>${pelicula.titulo}</h2>
        </div>
        <div class="row">
            <div class="col-sm-3">
                <p class="text-center">
                    <img class="img-rounded" src="${resourcesPath}/images/movies/${pelicula.imagen}" alt="Generic placeholder image" width="155" height="220">
                </p>
            </div>
            <div class="col-sm-9">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">DETALLES</h3>
                    </div>
                    <div class="panel-body">
                        <p>
                            Título Original : ${pelicula.titulo} <br>
                            Actores : ${pelicula.detalle.actores}<br>
                            Director: ${pelicula.detalle.director}<br>
                            Clasificación: ${pelicula.clasificacion} <br>
                            Duración: ${pelicula.duracion} minutos <br>
                            Género: ${pelicula.genero} <br>
                            Fecha Estreno: ${pelicula.fechaEstreno}
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><span class="label label-success">${fechaBusqueda}</span></h3>
            </div>
            <div class="panel-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Hora</th>
                        <th>Sala</th>
                        <th>Precio</th>
                    </tr>
                    </thead>
                    <tbody>
                   <c:forEach items="${horarios}" var="horario">
                       <tr>${horario.hora}</tr>
                       <tr>${horario.sala}</tr>
                       <tr>$${horario.precio}</tr>
                   </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>


        <div class="row">
            <div class="col-sm-7">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Trailer</h3>
                    </div>
                    <div class="panel-body">
                        <iframe width="100%" height="315" src="${pelicula.detalle.trailer}"></iframe>
                    </div>
                </div>
            </div>
            <div class="col-sm-5">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">SINOPSIS</h3>
                    </div>
                    <div class="panel-body">
                        <p> ${pelicula.detalle.sinopsis} </p>
                    </div>
                </div>
            </div>
        </div>

</div>

    <hr class="featurette-divider">

    <jsp:include page="includes/footer.jsp"></jsp:include>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${resourcesPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
