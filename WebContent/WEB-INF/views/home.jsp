<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- TODO: Add the @taglib for form -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Bungee+Shade">

<title>Film Database</title>
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

body:after {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	color: black;
	text-align: center;
	content: "Copyright \00a9 Team href ... not that you would want to steal this"
}
</style>
</head>
<body>


	<center>
		<h1>Welcome to Film Fiends Database</h1>
		<p>
		<form action="searchID.do" method="GET">
			Search by Film ID <br /> <input type="text" name="searchId" /><br />
			<input type="submit" class="button" value="Submit" /><br />
			<br />
		</form>
		<form action="searchKeyword.do" method="GET">
			Search by Keyword <br /> <input type="text" name="searchKeyword" /><br />
			<input type="submit" class="button" value="Submit" /><br />
			<br />
		</form>
		<br />
		<form action="addFilm.do" method="POST">
			<input type="submit" class="button" value="Add Film" />
		</form>
		<br />
	</center>



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