<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	        <%@ page isELIgnored="false"%>
	        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search Result</title>
</head>
<body>
	<div align="center">
		<h1>Search Result</h1>
		<table border="1" padding="5">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>EmailID</th>
				<th>MobileNumber</th>
				<th>DateOfBirth</th>
				<th>Gender</th>
				<th>Address</th>
			</tr>
			<c:forEach items="${result}" var="employee">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.name}</td>
					<td>${employee.emailId}</td>
					<td>${employee.mobileNumber}</td>
					<td>${employee.dateofbirth}</td>
					<td>${employee.gender}</td>
					<td>${employee.address}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>