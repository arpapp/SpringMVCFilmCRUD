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
	<form action="filmInfo.do" method="GET">
		Abbreviation:
		<input type="text" name="abbr" size="4"/> 
		<input type="submit" value="Get State Data" />
	</form>
</body>
</html>