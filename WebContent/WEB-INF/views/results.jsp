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
			<ul>
				<c:forEach var="eachFilm" items="${listFilm}">
					<li>${eachFilm.title}</li>
					<li>${eachFilm.language}</li>
					<li>${eachFilm.rating}</li>
					<li>${eachFilm.category}</li>
					<li><c:forEach var="eachActor" items="${eachFilm.filmActors}">
							<li>${eachActor.firstName} ${eachActor.lastName}</li>
							<%-- <li>${eachActor.lastName}</li> --%>
						</c:forEach></li> 
				</c:forEach>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No Film Found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>