<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="
    background: #e1e1e8;
">
<h1>hellllo</h1>
<form:form action="" method="post" modelAttribute="register" >
 
   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
    User Name<form:input type="text" path="userName" /><br/>
    Password<form:input type="password" path="password"/>
  <br><br> 
 <form:button>Create Account</form:button> 
 </form:form>
</body>
</html>