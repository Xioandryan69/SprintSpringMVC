<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Spring MVC</title>
</head>
<body>

<h1>Spring MVC fonctionne</h1>
<p><a href="${pageContext.request.contextPath}/test">Aller vers la page de test</a></p>
<p><a href="${pageContext.request.contextPath}/ping">Tester GET /ping</a></p>
<p><a href="${pageContext.request.contextPath}/requests">Voir les requetes loggees</a></p>

</body>
</html>