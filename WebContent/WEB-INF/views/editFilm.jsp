<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Edit a Film</title>
<style type="text/css">
h1 {
	color: #0AEE37;
	font-family: "Bungee Shade", cursive;
	font-weight: bold;
	-webkit-text-stroke-width: 2px;
    -webkit-text-stroke-color: black;
}

body {
  background-color: #C1C1C1;
  }
  
.button {
  transition-duration: 0.4s;
  border-radius: 4px;
  margin-top: 4px;
}

.button:hover {
  background-color: #0AEE37; /* Green */
  color: white;
  margin-top: 4px;
}

</style>
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
			<table>
				<input type="hidden" name="id" value="${film.id}"></input>
		<tr>
			<td>Title:</td>
		</tr>
		<tr>
			<td><input type="text" name="title" value="${film.title}" size="25"/></td>
		</tr>
		<tr>
			<td>Description:</td>
		</tr>
		<tr>
			<td><input type="text" name="description" value="${film.description}" size="25" /></td>
		</tr>
		<tr>
			<td>Release Year:</td>
		</tr>
		<tr>
			<td><input type="text" name="releaseYear" size="6" value="${film.releaseYear}" /></td>
		</tr>
		<tr>
			<td><label>For the following, please type (1) for English, (2) for Italian, (3) for Japanese, (4) for Mandarin, (5) for French, or (6) for German</label></td>
		</tr>
		<tr>
			<td>Language ID:</td>
		</tr>
		<tr>
			<td><input type="text" name="languageId" value="${film.languageId}" size="6" /></td>
		</tr>
		<tr>
			<td>Rental Duration:</td>
		</tr>
		<tr>
			<td><input type="text" name="rentalDuration" value="${film.rentalDuration}" size="6"/></td>
		</tr>
		<tr>
			<td>Rental Rate:</td>
		</tr>
		<tr>
			<td><input type="text" name="rentalRate" size="4" value="${film.rentalRate}"  size="6"/></td>
		</tr>
		<tr>
			<td>Length:</td>
		</tr>
		<tr>
			<td><input type="text" name="length" size="4" value="${film.length}"  size="6" /></td>
		</tr>
		<tr>
			<td>Replacement Cost:</td>
		</tr>
		<tr>
			<td><input type="text" name="replacementCost" value="${film.replacementCost}"  size="6" /></td>
		</tr>
		<tr>
			<td>Rating (G, PG, PG13, R, NC17):</td>
		</tr>
		<tr>
			<td><input type="text" value="${film.rating}" name="rating"  size="6" /></td>
		</tr>
		<tr>
			<td>
				<table>
					<tr>
						<td><input type="submit" class="button" value="Submit" /></td>
					</tr>
				</table>
			</td>
		</tr>
				</table>
			</c:when>
			<c:otherwise>
				<p>No Film Found</p>
			</c:otherwise>
		</c:choose>
	</form>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>