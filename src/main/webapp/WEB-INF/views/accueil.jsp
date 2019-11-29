<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
</head>
<body>
	<c:url value="/inscription" var="inscription"/>
	<c:url value="/admin/inscriptions" var="adminInscriptions"/>
	<ul>
		<li><a href="${inscription}">Pour vous inscrire</a></li>
		<li><a href="${adminInscriptions}">Pour voir la liste des inscriptions</a></li>
	</ul>
</body>
</html>