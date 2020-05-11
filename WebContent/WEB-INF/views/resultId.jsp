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
					<td>Category: <em>${film.category}</em>ss</td>
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
</body>
</html>