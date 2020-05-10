<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Choose the Film to Delete</title>
</head>
<body>
	<h2>Delete Film</h2>
	<br>
	<p>Is this the film you would like to delete?</p>
	<c:choose>
		<c:when test="${! empty film}">
			<ul>
				<li>${film.title}</li>
				<li>${film.language}</li>
				<li>${film.rating}</li>
				<li>${film.category}</li>
				<%-- <li>ACTORS:<c:forEach var="eachActor"
						items="${film.filmActors}">
						<li>${eachActor.firstName}${eachActor.lastName}</li> --%>
						<%-- <li>${eachActor.lastName}</li> --%>
					<%-- </c:forEach></li> --%>
			</ul>
			<br>
			<br>
			<form action="deleteFilmAction.do" method="POST">
				<input type="submit" value="Delete Film" /> 
				<input type="hidden"name="id" value="${film.id}" />
			</form>
		</c:when>
		<c:otherwise>
			<p>No Film Found</p>
		</c:otherwise>
	</c:choose>
	
</body>
</html>