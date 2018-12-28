<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
			<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
			<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
			<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js">
			</script>
	
		<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
		
	
</head>
<body>
<p style="font-family: initial;font-size: 25px;"> Please Enter the <b>Customer Code</b> to Search the record</p><br>
<form:form action="search" modelAttribute="search" method="post">
<p style="font-size: 20px;font-family: sans-serif;"><b>Custromer Code</b> </p><br>
<form:input path="customerCode" /><br><br>
<input type="submit" class= "btn btn-primary" value = "SEARCH"/>



<table>
			<tr><th>Customer Code</th>
				<th>Customer Name</th>
				<th>Customer Address</th>
				<th>Customer Pincode</th>
				<th>Customer E-mail</th>
				<th>Customer Number</th>
				<th>Registration Date</th>
				<th>Created By</th>
				<th>Modified Date</th>
		
			</tr>

		
				<tr>
				<th>${search.customerCode}</th> 
					<th>${search.customerName}</th>
					<th>${search.customerAddress}</th>
					<th>${search.customerPincode}</th>
					<th>${search.customerEmail}</th>
					<th>${search.customerNumber}</th>
					<th>${search.registrationDate}</th>
					<th>${search.createdBy}</th>
					<th>${search.modifiedDate}</th>
				</tr>
	
		</table>

</form:form>






</body>
</html>