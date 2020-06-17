<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.mvc.bean.CustomerBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE CUSTOMER DETAILS</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>
<jsp:include page="masterPage.jsp" />

<% CustomerBean cust=(CustomerBean)session.getAttribute("customer");

%>
<br><br>
<div class="container">
<div class="row justify-content-center">
<h3>UPDATE CUSTOMER DETAILS</h3>
</div>
</div>



<div class="container">
<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">
<form action="CustomerUpdateServlet" class="needs-validation"  method="post">
<table>

<tr>
<td>Customer Id</td>
<td>:<%out.print(cust.getCustomerid()); %></td>
</tr>

<tr>
<td>Customer SSN Id</td>
<td>:<%out.print(cust.getSsnid()); %></td>
</tr>

<tr>
<td>Old Customer Name</td>
<td>:<%out.print(cust.getCustomername()); %></td>
</tr>

<tr>
<td>New Customer Name</td>
<td>:<input type="text" class="form-control" name="newname"/></td>
</tr>

<tr>
<td>old Age</td>
<td>:<%out.print(cust.getAge()); %></td>
</tr>

<tr>
<td>New Age</td>
<td>:<input type="text" class="form-control" name="newage"/></td>
</tr>

<tr>
<td>Address</td>
<td>:<%out.print(cust.getAddress()); %></td>
</tr>

<tr>
<td>New Address</td>
<td>:<input type="text"  class="form-control"  name="newaddress"/></td>
</tr>

<tr>
<td><input type="submit"  class="form-control btn btn-primary"  value="update"/></td>
<td><input type="button"  class="form-control btn btn-primary"  value="home" /></td>
</tr>

</table>
</form>
</div>
</div>
</div>
<br><br>
</body>
</html>