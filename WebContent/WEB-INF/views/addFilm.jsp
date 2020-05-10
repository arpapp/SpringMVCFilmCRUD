<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add a Film</title>
</head>
<body>
	<h2>Add a Film</h2>
	<br>
	<br> Please enter the following information for the film you would
	like to add:
	<br>
	<form action="addFilmAction.do" method="POST">
		
		Title:<input type="text" name="title" />
		<br>
		Description:<input type="text" name="description" size="4"/> 
		<br>
		Release Year:<input type="text" name="releaseYear" size="4"/> 
		<br>
		<label>For the following, please type (1) for English, (2) for Italian, (3) for Japanese, (4) for Mandarin, (5) for French, or (6) for German</label>
		<br>
		Language ID:<input type="text" name="languageId" size="4"/>  
		<br>
		Rental Duration:<input type="text" name="rentalDuration" size="4"/> 
		<br>
		Rental Rate:<input type="text" name="rentalRate" size="4"/> 
		<br>
		Length:<input type="text" name="length" size="4"/> 
		<br>
		Replacement Cost:<input type="text" name="replacementCost" size="4"/> 
		<br> 
		Rating (G, PG, PG13, R, NC17):<input type="text" name="rating" size="4"/> 
		<!-- <label><input type = "radio">Amateur</label> -->
		<!-- <label><input type="radio" name="rating" size="4"/>G</label>
		<label><input type="radio" name="rating" size="4"/>PG</label>
		<label><input type="radio" name="rating" size="4"/>PG13</label>
		<label><input type="radio" name="rating" size="4"/>R</label>
		<label><input type="radio" name="rating" size="4"/>NC17</label> -->
		<br>
<!-- 		Special Features:<input type="text" name="specialFeatures" size="4"/>
 -->		<br>
		<input type="submit" value="Submit" />
	</form>
</body>
</html>