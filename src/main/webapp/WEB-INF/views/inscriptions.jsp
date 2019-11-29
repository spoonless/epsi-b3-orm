<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste inscriptions</title>
</head>
<body>

<table>
	<caption>Liste des inscriptions</caption>
	<thead>
		<tr>
			<th>Nom</th>
			<th>Date inscription</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${inscriptions}" var="i">
			<tr>
				<td><c:out value="${i.nom}"/></td>
				<td><fmt:formatDate value="${i.date}" type="date" dateStyle="medium"/></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<div>
	<c:url value="/" var="accueil"/>
	<a href="${accueil}">Retour à l'accueil</a>
</div>

</body>
</html>