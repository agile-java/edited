<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cashier Home Page</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<body>
<jsp:include page="masterPage.jsp" />

<br><br>
<div class="container">
<div class="row justify-content-center">
<h1>Cashier Home</h1>
</div>
</div>
<div class="container">
<div class="row justify-content-center">
<h4>Search Account/Customer Details</h4>
</div>
</div>

<div class="container">
<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">
<form action="AccountDetailsServlet" class="needs-validation" method="post">
	<table>
	
		<tr>
			<td>Enter SSN Id</td>
			<td><input type="text"  Class="form-control" name="ssnid" /></td>
		</tr>
		
		<tr>
			<td>Enter Customer Id</td>
			<td><input type="text"  Class="form-control" name="customerid" /></td>
		</tr>	

		<tr>		
			<td>Enter Account Id</td>
			<td><input type="text"  Class="form-control" name="accountId" /></td>
		</tr>
		
		
		
	</table>
	<br>
	
<div class="container">
<div class="row justify-content-center">
		<input type="submit"  class="btn btn-primary"  name="search" value="search" />
</div>
</div>	
		
</form>
</div>
</div>
</div>
</body>
</html>