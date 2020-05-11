<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


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
<title>Add a Film</title>
</head>
<body>
	<h2>Add a Film</h2>
	<br>
	<br> Please enter the following information for the film you would
	like to add:
	<br>
	<form action="addFilmAction.do" method="POST">

		Title:<input type="text" name="title" /> <br> Description:<input
			type="text" name="description" size="4" /> <br> Release Year:<input
			type="text" name="releaseYear" size="4" /> <br> <label>For
			the following, please type (1) for English, (2) for Italian, (3) for
			Japanese, (4) for Mandarin, (5) for French, or (6) for German</label> <br>
		Language ID:<input type="text" name="languageId" size="4" /> <br>
		Rental Duration:<input type="text" name="rentalDuration" size="4" />
		<br> Rental Rate:<input type="text" name="rentalRate" size="4" />
		<br> Length:<input type="text" name="length" size="4" /> <br>
		Replacement Cost:<input type="text" name="replacementCost" size="4" />
		<br> Rating (G, PG, PG13, R, NC17):<input type="text"
			name="rating" size="4" />
		<!-- <label><input type = "radio">Amateur</label> -->
		<!-- <label><input type="radio" name="rating" size="4"/>G</label>
		<label><input type="radio" name="rating" size="4"/>PG</label>
		<label><input type="radio" name="rating" size="4"/>PG13</label>
		<label><input type="radio" name="rating" size="4"/>R</label>
		<label><input type="radio" name="rating" size="4"/>NC17</label> -->
		<br>
		<!-- 		Special Features:<input type="text" name="specialFeatures" size="4"/>
 -->
		<br> <input type="submit" value="Submit" />
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