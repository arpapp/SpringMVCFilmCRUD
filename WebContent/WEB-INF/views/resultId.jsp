<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film Information</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty film}">
			<ul>
				<li>${film.title}</li>
				<li>${film.language}</li>
				<li>${film.rating}</li>
				<li>${film.category}</li>
				<li>ACTORS:<c:forEach var="eachActor"
						items="${film.filmActors}">
						<li>${eachActor.firstName}${eachActor.lastName}</li>
						<%-- <li>${eachActor.lastName}</li> --%>
					</c:forEach></li>
			</ul>
			<br>
			<br>
			<form action="editFilm.do" method="GET">
				<input type="submit" value="Edit Film" />
			</form>
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