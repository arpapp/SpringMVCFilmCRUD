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
	<h2>Film added:</h2>
	<c:choose>
		<c:when test="${! empty film}">
			<ul>
				<li>ID: ${film.id}</li>
				<li>Title: ${film.title}</li>
				<li>Language ID: ${film.languageId}</li>
				<li>Rating: ${film.rating}</li>
				<li>Release Year: ${film.releaseYear}</li>
				<li>Rental Duration: ${film.rentalDuration}</li>
				<li>Rental Rate: ${film.rentalRate}</li>
				<li>Length: ${film.length}</li>
				<li>Replacement Cost: ${film.replacementCost}</li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No Film Found</p>
		</c:otherwise>
	</c:choose>
	<br>
	<br>
	<form action="editFilm.do" method="GET">
		<input type="submit" value="Edit Film" />
	</form>
	<form action="deleteFilm.do" method="GET">
		<input type="submit" value="Delete Film" />
	</form>
</body>
</html>