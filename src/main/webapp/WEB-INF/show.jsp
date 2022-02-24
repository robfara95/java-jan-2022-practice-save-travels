<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Expense Details</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div id="main">
			<table class="table">
				<thead>
					<tr>
						<th>Expense Details </th>
						<th><a href="/expenses">goback</a></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Expense Name:</td> 
						<td><c:out value="${expense.name}"/></td> 
					</tr>
					<tr>
						<td>Expense Description:</td> 
						<td><c:out value="${expense.description}"/></td> 
					</tr>
					<tr>
						<td>Vendor:</td> 
						<td><c:out value="${expense.vendor}"/></td> 
					</tr>
					<tr>
						<td>Amount Spend:</td> 
						<td>$<c:out value="${expense.amount}"/></td> 
					</tr>
				<tbody> 
			
			</table>
		</div>
	</div>	
</body>
</html>