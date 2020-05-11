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
<title>Choose the Film to Delete</title>
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
	<h2>Delete Film</h2>
	<c:choose>
		<c:when test="${! empty film}">
			<table>
				<th>Is this the film you would like to delete?</th>
				<tr>
					<td>Film ID: <em>${film.id}</em></td>
				</tr>
				<tr>
					<td>Title: <em>${film.title}</em></td>
				</tr>
				<tr>
					<td>Language: <em>${film.language}</em></td>
				</tr>
				<tr>
					<td>Rating: <em>${film.rating}</em></td>
				</tr>
				<tr>
					<td>Category: <em>${film.category}</em></td>
				</tr>
				<%-- <li>ACTORS:<c:forEach var="eachActor"
						items="${film.filmActors}">
						<li>${eachActor.firstName}${eachActor.lastName}</li> --%>
				<%-- <li>${eachActor.lastName}</li> --%>
				<%-- </c:forEach></li> --%>
				</tr>
				<tr>
					<td>
						<table>
							<tr>
								<td>
									<form action="deleteFilmAction.do" method="POST">
										<input type="submit" class="button" value="Delete Film" /> <input
											type="hidden" name="id" value="${film.id}" />
									</form>
								</td>
								<td>
									<form action="home.do" method="GET">
										<input type="submit" class="button" value="Home" />
									</form>
								</td>
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