<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.mvc.bean.CustomerBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search result</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>
    <jsp:include page="masterPage.jsp" />
    
<% CustomerBean cust=(CustomerBean)session.getAttribute("customer");

%>

<br><br>
<div class="container col-md-6 ">
<div class="row justify-content-center">
<h2>search result</h2>
</div>
</div>

<div class="container">

<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">

<form>
<div class="row justify-content-center">
    <div class="col-auto">
      <table class="table table-responsive table-borderless">
    

<tbody>
<tr>
<td>Customer Id</td>
<td>:<%out.print(cust.getCustomerid()); %></td>
</tr>

<tr>
<td>Customer SSN Id</td>
<td>:<%out.print(cust.getSsnid()); %></td>
</tr>

<tr>
<td>Customer Name</td>
<td>:<%out.print(cust.getCustomername()); %></td>
</tr>

<tr>
<td>Age</td>
<td>:<%out.print(cust.getAge()); %></td>
</tr>

<tr>
<td>Address</td>
<td>:<%out.print(cust.getAddress()); %></td>
</tr>

<tr>
<td>City</td>
<td>:<%out.print(cust.getCity()); %></td>
</tr>

<tr>
<td>State</td>
<td>:<%out.print(cust.getState()); %></td>
</tr>


<tr>

<td rowspan="2"><input type="button" class="form-control btn btn-primary" value="update" onclick="location.href='updatecustomer.jsp';"/></td>
<td><input type="button" class="form-control btn btn-primary" value="delete" onclick="location.href='customerdelete.jsp';"/></td>
</tr>

</table>
<br><br>
</div>
</div>
</form>
</div>
</div>
</div>
</body>
</html>
