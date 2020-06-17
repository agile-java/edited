<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>

<jsp:include page="masterPage.jsp" />
<br><br>
<div class="container">
<div class="row justify-content-center">
<h2>CREATE ACCOUNT</h2>
</div>
</div>

<div class="container">
<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">
<form action="AccountCreate" class="needs-validation"  method="post">
<table>

<tr>
<td>Customer id</td>
<td><input type="text" class="form-control" name="customerid" /></td>
</tr>

<tr>
<tr><td>
<label for="actype">Account Type:</label></td>
 <td> <select name="actype" id="actype">
    <option value="current">current</option>
    <option value="savings">savings</option>
  </select></td></tr>

<tr>
<td>Deposit amount</td>
<td><input type="text" class="form-control" name="deposit" /></td>
</tr>

<tr>


<td><input type="submit" class="form-control btn btn-primary"  name="create" value="Create" /></td>
<td><input type="button" class="form-control btn btn-primary" name="home" value="home" /></td>
</tr>
</table>
</form>
</div>
</div>
</div>

</body>
</html>