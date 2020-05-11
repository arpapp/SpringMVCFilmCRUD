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
		<c:when test="${! empty listFilm}">

			<c:forEach var="eachFilm" items="${listFilm}">
				<table>
					<%-- <li>${eachFilm }</li>--%>
					<tr>
						<td>Film ID: <em>${eachFilm.id}</em></td>
					</tr>
					<tr>
						<td>Title: <em>${eachFilm.title}</em></td>
					</tr>
					<tr>
						<td>Language: <em>${eachFilm.language}</em></td>
					</tr>
					<tr>
						<td>Rating: ${eachFilm.rating}</td>
					</tr>
					<tr>
						<td>Category: <em>${eachFilm.category}</em></td>
					</tr>
					<tr>
						<td>*---ACTORS---*<c:forEach var="eachActor"
								items="${eachFilm.filmActors}">
								<tr>
									<td>- <em>${eachActor.firstName} ${eachActor.lastName}</em></td>
								</tr>
							</c:forEach>
					</tr>
					<tr>
					<td>
					<table>
						<tr>
							<td><form action="editFilm.do" method="GET">
									<input type="submit" value="Edit Film" /> <input type="hidden"
										name="id" value="${eachFilm.id}" />
								</form></td>
							<td><form action="deleteFilm.do" method="GET">
									<input type="submit" value="Delete Film" /> <input
										type="hidden" name="id" value="${eachFilm.id}" />
								</form></td>
						</tr>
					</table>
					</td></tr>
				</table>
				<strong>--------------------------</strong>
			</c:forEach>




			<!-- <form action="editFilm.do" method="GET">
				<input type="submit" value="Edit Film" />
			</form>
			<form action="deleteFilm.do" method="GET" >
				<input type="submit" value="Delete Film" />
			</form> -->
		</c:when>
		<c:otherwise>
			<p>No Film Found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>