<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inscription réussie</title>
</head>
<body>
<div>
	Vous êtes bien inscrit avec le nom <c:out value="${inscription.nom}"/> 
	le <fmt:formatDate value="${inscription.date}" type="date" dateStyle="long"/>.
</div>
<div>
	<c:url value="/" var="accueil"/>
	<a href="${accueil}">Retour à l'accueil</a>
</div>
</body>
</html>