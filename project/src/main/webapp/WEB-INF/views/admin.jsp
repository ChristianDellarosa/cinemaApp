<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>CineSite Administracion | Bienvenido</title>
    <spring:url value="/resources" var="resourcesPath" />

    <link href="${resourcesPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${resourcesPath}/bootstrap/css/theme.css" rel="stylesheet">

</head>

<body>

<jsp:include page="includes/menu.jsp"></jsp:include>

<div class="container theme-showcase" role="main">

    <div class="jumbotron">
        <h3>Administracion del Sistema</h3>
        <p>Bienvenido(a) <sec:authentication property="principal.username"/> </p>
    </div>

    <jsp:include page="includes/footer.jsp"></jsp:include>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${resourcesPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>