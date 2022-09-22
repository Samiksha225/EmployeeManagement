<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Employee</title>
</head>
<body>
	<div align="center">
		<h2>New Employee</h2>
		<form:form action="save" method="post" modelAttribute="employee">
			<table border="0" cellpadding="5">
				<tr>
					<td>Name:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>EmailID:</td>
					<td><form:input path="emailId" /></td>
				</tr>
				<tr>
					<td>MobileNumber:</td>
					<td><form:input path="mobileNumber" /></td>
				</tr>
				<tr>
					<td>DateOfBirth:</td>
					<td><form:input path="dateofbirth" /></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><form:input path="gender" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="save" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>