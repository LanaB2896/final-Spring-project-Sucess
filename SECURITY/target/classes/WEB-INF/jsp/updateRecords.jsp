<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
			<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
			<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
			<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js">
			</script>
<title>Insert title here</title>
</head>
<body style="
    background: #e1e1e8;
">
<p style="font-family: initial;font-size: 25px;"> Please Enter the <b>Customer Code</b> to Update the record</p><br>
<form:form modelAttribute="up" action="update" method="post">
<p style="font-size: 20px;font-family: sans-serif;"><b>Custromer Code</b> </p><br>
<form:input path="customerCode" /><br><br>
<input type="submit" class="btn btn-warning" value="UPDATE"/>
</form:form>
</body>
</html>