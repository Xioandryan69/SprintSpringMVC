<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Test des methodes</title>
</head>
<body>

<h1>Test des methodes HTTP</h1>

<p><a href="${pageContext.request.contextPath}/">Retour a l'accueil</a></p>

<h2>GET</h2>
<form action="${pageContext.request.contextPath}/methods/get" method="get">
    <button type="submit">Executer GET</button>
</form>

<h2>POST</h2>
<form action="${pageContext.request.contextPath}/methods/post" method="post">
    <button type="submit">Executer POST</button>
</form>

<h2>PUT</h2>
<form action="${pageContext.request.contextPath}/methods/put" method="post">
    <input type="hidden" name="_method" value="put" />
    <button type="submit">Executer PUT</button>
</form>

<h2>DELETE</h2>
<form action="${pageContext.request.contextPath}/methods/delete" method="post">
    <input type="hidden" name="_method" value="delete" />
    <button type="submit">Executer DELETE</button>
</form>

</body>
</html>