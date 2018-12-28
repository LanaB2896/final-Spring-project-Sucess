
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*" import = "java.text.SimpleDateFormat" %>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 <%
  SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yy");
  String date = dateFormat.format(new Date());
%>




<title>Insert title here</title>
<style>
 
 body 
 {
    font-family:sans-serif;
    
}
{
 box-sizing: border-box; color: Red;
 }
 hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
.regfrm
{
background-color: #d078ef36;
    color: #fd0303a8;
    text-align: center;
    padding: 6px;
}


 .maincont
 {
 font-family: sans-serif;
    font-size: 100%;
    padding: 1%;
 }
 input[type=text],input[type=date],input[type=email],input[type=gender]
 {
 width: 97%;
    padding: 15px;
    display: inline-block;
    border: none;
    background: #f1f1f1;
 }
 input[type=text]:focus,input[type=date]:focus,input[type=email]:focus,input[type=gender]:focus
{
    background-color: #cbc7e8d9;
    outline: none;
	opacity:0.9
}

 .regbtn
 {
 font-size: 26px;
    background-color: #11ea11;
    opacity: 81.9;
    border: none;
    padding: 9px;
	    width: 100%;
 }
 

 </style>

</head>
<body>
 <header>
 <b><h1 class="regfrm">Customer Form</h1></b>
 
 </header>
<p style="font-family: initial;font-size: 25px;"> Enter the fields to create a New Account</p><br>
<form:form modelAttribute="customerDetails"  action="add"  method="post">
<div class="maincont">
<label for="Customer Code">Customer Code:</label>
<form:input path="customerCode"/>
<form:errors path="customerCode" cssClass="error" /><br><br>

<label for="Customer Code">Customer Name:</label>
<form:input path="customerName"/>
<form:errors path="customerName" cssClass="error" /><br><br>

<label for="Customer Address">Customer Address:</label>
<form:input path="customerAddress"/><br><br>
<form:errors path="customerAddress" cssClass="error" /><br><br>

<label for="Customer Pincode">Customer Pincode:</label>
<form:input path="customerPincode"/><br><br>
<form:errors path="customerPincode" cssClass="error" /><br><br>

<label for="Customer Email">Customer Email:</label>
<form:input path="customerEmail"/><br><br>
<form:errors path="customerEmail" cssClass="error" /><br><br>

<label for="Customer Number">Customer Number:</label>
<form:input path="customerNumber"/><br><br>

<form:input path="registrationDate" type="hidden" value="<%=date%>"  />

<form:errors path="registrationDate" cssClass="error" /><br><br>


<label for="Created By">Created By:</label>
<form:input path="createdBy"/><br><br>
<form:errors path="createdBy" cssClass="error" /><br><br>

<label for="Modified Date">Modified Date:</label>
<form:input path="modifiedDate"/><br><br>
<form:errors path="modifiedDate" cssClass="error" /><br><br>
</div>
<div>
<input type = submit  class="regbtn" value="Add Customer"/>
</div>
</form:form>
</body>
</html>

