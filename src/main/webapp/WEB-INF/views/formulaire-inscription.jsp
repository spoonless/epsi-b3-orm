<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>

<div>
	<form:errors/>
</div>

<form:form servletRelativeAction="inscription" modelAttribute="donneesPersonnellesDto" acceptCharset="utf-8">
  <p><label>Nom : </label><form:input path="nom"/> <form:errors path="nom"/></p>
  <p><label>Âge : </label><form:input path="age"/> <form:errors path="age"/></p>
  <button type="submit">S'inscrire</button>
</form:form>

<div>
	<c:url value="/" var="accueil"/>
	<a href="${accueil}">Retour à l'accueil</a>
</div>
</body>
</html>