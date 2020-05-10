<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- TODO: Add the @taglib for form -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film Database</title>
</head>
<body>
<center><h1>Welcome to Film Fiends Database</h1></center>
	<p>
	<form action="searchID.do" method="GET">
		Search Film ID <br /> <input type="text" name = "searchId"/>
		<input type="submit" value="Submit" />
	</form>
	<form action="searchKeyword.do" method="GET">
		Search Keyword <br /> <input type="text" name = "searchKeyword"/>
		<input type="submit" value="Submit" />
	</form>
	<br />
	<form action="addFilm.do" method="POST">
		<input type="submit" value="Add Film" />
	</form>
	<br />
	
</body>
</html>