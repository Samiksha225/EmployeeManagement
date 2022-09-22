<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>
</head>
<body>
	<div align="center">
		<h1>Employee Dashboard</h1>
		<form method="get" action="search">
			<input type="text" name="keyword" /> <input type="submit"
				value="Search" />
		</form>
		<h3>
			<a href="new" onclick='return addRecord()'>New Employee</a>
		</h3>
		<table border="1" padding="5">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>EmailID</th>
				<th>MobileNumber</th>
				<th>DateOfBirth</th>
				<th>Gender</th>
				<th>Address</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${listEmployee}" var="employee">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.name}</td>
					<td>${employee.emailId}</td>
					<td>${employee.mobileNumber}</td>
					<td>${employee.dateofbirth}</td>
					<td>${employee.gender}</td>
					<td>${employee.address}</td>
					<td><a href="edit?id=${employee.id}" onclick="editRecord()">Edit</a>
						&nbsp;&nbsp;&nbsp; <a href="delete?id=${employee.id}" onclick='return deleteRecord()'>Delete</a>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script>
		function editRecord() {
			alert("Do you want to edit  the record?");
		}

		function deleteRecord() {
			return confirm("Do you want to delete the record?");
		}

		function addRecord() {
			return confirm("Do you want to add the record?");
		}
	</script>
</body>
</html>