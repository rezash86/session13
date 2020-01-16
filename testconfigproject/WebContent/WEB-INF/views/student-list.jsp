<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>add Student</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">

</head>
<body>
	<div>
		<a href="addstudent" class="btn btn-primary">Add a new student</a>
	</div>

	<div align="center">
		Cool Student List
		<table border="1">
			<tr>
				<th>first name</th>
				<th>last name</th>
				<th>age</th>
			</tr>

			<c:forEach var="student" items="${studList}">
				<tr>
					<td><c:out value="${student.firstName}"></c:out></td>
					<td><c:out value="${student.lastName}"></c:out></td>
					<td><c:out value="${student.age}"></c:out></td>
					<td><a href="editstudent?studentId=${student.id}">update
							me!</a></td>
					<td><a href="deletestudent?studentId=${student.id}">delete
							me</a></td>
					<td><a href="addemail?studentId=${student.id}">add email</a></td>
				</tr>
			</c:forEach>

		</table>
	</div>

</body>
</html>