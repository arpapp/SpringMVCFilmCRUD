<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit a Film</title>
</head>
<body>
	<h2>Edit a Film</h2>
	<br>
	<br> Please edit the following information for the film you would
	like to update:
	<br>
	<br>
	<form action="editFilmAction.do" method="POST">
		<c:choose>
			<c:when test="${! empty film}">
				<input type="hidden" name = "id" value="${film.id}"></input>
		Title:<input type="text" name="title" value="${film.title}" />
				<br>
		Description:<input type="text" name="description" value="${film.description}" size="4" />
				<br>
		Release Year:<input type="text" name="releaseYear" size="4" value="${film.releaseYear}" />
				<br>
				<label>For the following, please type (1) for English, (2)
					for Italian, (3) for Japanese, (4) for Mandarin, (5) for French, or
					(6) for German</label>
				<br>
		Language ID:<input type="text" name="languageId" value="${film.languageId}" size="4" />
				<br>
		Rental Duration:<input type="text" name="rentalDuration"  value="${film.rentalDuration}"size="4" />
				<br>
		Rental Rate:<input type="text" name="rentalRate" size="4" value="${film.rentalRate}" />
				<br>
<%-- 		Length:<input type="text" name="length" size="4" value="${film.length}" />
 --%>				
		Replacement Cost:<input type="text" name="replacementCost" value="${film.replacementCost}" size="4" />
				<br> 
		Rating (G, PG, PG13, R, NC17):<input type="text" value="${film.rating}" name="rating"
					size="4" />

				<input type="submit" value="Submit" />
			</c:when>
			<c:otherwise>
				<p>No Film Found</p>
			</c:otherwise>
		</c:choose>
	</form>
</body>
</html>