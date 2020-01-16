<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
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
	<div align="center">
		<form:form action="saveEmail" method="post" modelAttribute="email">
			<table>
				<form:hidden path="id" />
				<form:hidden path="student.id" />
				<tr>
					<td>Email address</td>
					<td><form:input path="emailAddress" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Add Email"
					 class="btn btn-primary" ></td>
				</tr>
			</table>

		</form:form>
	</div>
</body>
</html>