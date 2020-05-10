<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Choose the Film to Delete</title>
</head>
<body>
<h2>Delete Film</h2>
<br>
Enter Film ID To Delete:
<form action="deleteFilmAction.do" method="GET">

    <input type = "text" value = "${film.id}"></input>

    <input type="submit" value="Submit" />
</form>
</body>
</html>