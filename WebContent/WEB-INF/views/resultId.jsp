<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<title>Film Information</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty film}">
			<table>
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
					<td>Category: <em>${film.category}</em>ss
					</td>
				</tr>
				<tr>
					<td>*---ACTORS---*<c:forEach var="eachActor"
							items="${film.filmActors}">
							<tr>
								<td>- <em>${eachActor.firstName} ${eachActor.lastName}</em></td>
							</tr>
							<%-- <li>${eachActor.lastName}</li> --%>
						</c:forEach>
				</tr>

				<tr>
					<td>
						<table>
							<tr>
								<td><form action="editFilm.do" method="GET">
										<input type="submit" value="Edit Film" /> <input
											type="hidden" name="id" value="${eachFilm.id}" />
									</form></td>
								<td><form action="deleteFilm.do" method="GET">
										<input type="submit" value="Delete Film" /> <input
											type="hidden" name="id" value="${eachFilm.id}" />
									</form></td>
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