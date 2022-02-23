<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Read Share</title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="container">
	
		<table class="table">
	    	<thead>
	        	<tr>
	          	  <th>Expense</th>
	          	  <th>Vendor</th>
	          	  <th>Amount</th>
	        </tr>

	   	 	</thead>
	    	<tbody>
	       		<c:forEach var="expense" items="${expenses}">
					<tr>
						<td><c:out value="${expense.name}"/></td>
						<td><c:out value="${expense.vendor}"/></td>	
						<td><c:out value="${expense.amount}"/></td>			
					</tr>
				</c:forEach>
	    	</tbody>
		</table>		
		
		<form:form action="/expenses/process" method="POST"  modelAttribute="expense" >
				<div class="form-group">
					<form:label path="name">Expense Name</form:label>
					<form:errors path="name" class="text-danger" />
					<form:input type="text" path="name" class="form-control" />				
				</div>
				<div class="form-group">
					<form:label path="vendor">Vendor</form:label>
					<form:errors path="vendor" class="text-danger" />
					<form:input type="text" path="vendor" class="form-control" />				
				</div>	
				<div class="form-group">
					<form:label path="amount">Amount</form:label>
					<form:errors path="amount" class="text-danger" />
					<form:input type="text" path="amount" class="form-control" />				
				</div>	
				<div class="form-group">
					<form:label path="description">Description</form:label>
					<form:errors path="description" class="text-danger" />
					<form:input type="text" path="description" class="form-control" />				
				</div>									
			<input type="submit" value="Submit" class="btn btn-primary">					
		</form:form>
		
		<h3><c:out value="${message}"/></h3>
	
	</div>
</body>
</html>