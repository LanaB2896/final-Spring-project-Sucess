<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script type="text/javascript">
$(function () {
	 $("#add").click(function () {
	   window.location.href = "/add";
	 });
	});
$(function () {
	 $("#view").click(function () {
	   window.location.href = "/table";
	 });
	});
$(function () {
	 $("#update").click(function () {
	   window.location.href = "/update";
	 });
	});
$(function () {
	 $("#search").click(function () {
	   window.location.href = "/search";
	 });
	});
$(function () {
	 $("#delete").click(function () {
	   window.location.href = "/delete";
	 });
	});

// $(function () {
// 	 $("#logout").click(function () {
// 	   window.location.href = "/home";
// 	 });
// 	});
</script>
<style>
div.dotted {border-style: dotted;}
</style>
</head>
<body style="
    background: #e1e1e8;
    margin-left: 8%;
   
    padding-top: 45px;
  
">

<!-- <form action="home" method="Post"> -->
 <button type="button" class="btn btn-default btn-lg btn btn-success" id="add">
        <span class="glyphicon glyphicon-user" aria-hidden="true"></span> ADD Customer
      </button><br><br>
  <button type="button" class="btn btn-default btn-lg btn btn-info" id="view">
        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> VIEW Customer
      </button><br><br>
      
       <button type="button" class="btn btn-default btn-lg btn btn-warning" id="update">
        <span class="glyphicon glyphicon-upload" aria-hidden="true"></span> UPDATE Customer
      </button><br><br>
       <button type="button" class="btn btn-default btn-lg btn btn-primary" id="search">
        <span class="glyphicon glyphicon-search" aria-hidden="true"></span> SEARCH Customer
      </button><br><br>
       <button type="button" class="btn btn-default btn-lg btn btn-danger"  id="delete">
        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> DELETE Customer
      </button><br><br>
    
<!-- <a  href="/add" class="btn btn-primary" > ADD Customer </a> -->
<!-- <a href="/table" class="btn btn-info">VIEW CUSTOEMR</a> -->
<!-- <a href="/update" class="btn btn-warning">UPDATE Customer</a> -->
<!-- <a href="/search"class="btn">SEARCH CUSTOMER</a> -->
<!-- <a href="/delete" class="btn btn-danger" >DELETE Customer</a> -->
 


<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
<!--  <button type="button" class="btn btn-default btn-lg btn btn-danger"  id="logout"> -->
<!--         <span class="	glyphicon glyphicon-log-out" aria-hidden="true"></span> LOGOUT -->
<!--       </button><br><br> -->

 <form action="logout" method="post"> 
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
 <button type="submit" class="btn btn-default btn-lg btn btn-info"  >
        <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>LOGOUT
      </button><br><br>

<!-- <button type="submit" >Logout</button> -->
</form>

</body>
</html>