<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


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
	<form action="editFilmAction.do" method="GET">
	
		<input type = "hidden" value = "${film.id}"></input>
		Title:<input type="text" value = "${film.title} name = "title" size="4" required/>
		Description:<input type="text" value = "${film.description} vname="description" size="4"/> 
		Release Year:<input type="text" value = "${film.releaseYear} name="releaseYear" size="4"/> 
		<label>Please type (1) for English, (2) for Italian, (3) for Japanese, (4) for Mandarin, (5) for French, or (6) for German</label>
		Language ID:<input type="text" value = "${film.languageId} name="languageID" size="4"required/> 
		
		Rental Duration:<input type="text" value = "${film.rentalDuration} name="rentalDuration" size="4"required/> 
		Rental Rate:<input type="text" value = "${film.rentalRate} name="rentalRate" size="4"required/> 
		Length:<input type="text" value = "${film.length} name="length" size="4"/> 
		Replacement Cost:<input type="text" value = "${film.replacementCost} name="replacementCost" size="4"required/> 
		
		<!-- <label><input type = "radio">Amateur</label> -->
		Rating:
		<label><input type="radio" value = "${film.rating} name="rating" size="4"/>G</label>
		<label><input type="radio" value = "${film.rating} name="rating" size="4"/>PG</label>
		<label><input type="radio" value = "${film.rating} name="rating" size="4"/>PG13</label>
		<label><input type="radio" value = "${film.rating} name="rating" size="4"/>R</label>
		<label><input type="radio" value = "${film.rating} name="rating" size="4"/>NC17</label>
		
		Special Features:<input type="text" value = "${film.specialFeatures} name="specialFeatures" size="4"/> 
		
		<input type="submit" value="Submit" />
	</form>
</body>
</html>