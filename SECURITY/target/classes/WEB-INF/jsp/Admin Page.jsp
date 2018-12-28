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


<script>
$(function () {
 $("#createAccount").click(function () {
   window.location.href = "/register";
 });
});
</script>
</head>

<body style="
    background: #e1e1e8;
">
<h1>WELCOME</h1>

<form:form action="admin" modelAttribute="new" method="post"><br>

 <button type="button" id="createAccount" class="btn btn-default btn-lg">
        <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Create NEW USER Account
      </button>

<!--  <button type="button" id="createAccount" class="btn btn-success">Create NEW USER Account</button> -->
</form:form>

</body>
</html>