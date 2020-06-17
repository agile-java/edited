<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Statement</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>
<jsp:include page="masterPage.jsp" />
 <%@ page import="com.mvc.bean.DepositMoneyBean,com.mvc.dao.DepositMoneyDao,
 javax.xml.parsers.*,javax.xml.transform.*, 
 javax.xml.transform.dom.*,
 javax.xml.transform.stream.*,
 javax.xml.*,org.w3c.dom.*"
 %>
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
    
 <%
 
String accountID ="600";
 %>

<div class="container">
<div class="row justify-content-center">
<h2 class="tableHead" >Account Statement</h2>
</div>
</div>

<div class="container">
<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">
<form action="AccountDetailsServlet" class="needs-validation" method="post">
<table>

 <tr>
 	<td>
 		<label for="accountId">Account ID </label>
 		<input type="number"  Class="form-control" id="accountId" name="accountId" value="<%out.print(accountID);%>" disabled> 
 	</td>
</tr>


<tr>
 	<td>
 		 <input type="radio" id="lastNoOfTransactions" name="noOfTransactions" value="lastNoOfTransactions">
 		 <label for="lastNoOfTransactions">Last Number of Transactions</label><br>
 		 <input type="radio" id="startEndDates" name="noOfTransactions" value="startEndDates">
 		 <label for="startEndDates">Start-End Dates</label><br>
	</td> 
</tr>

<tr>
 	<td>
 		<label for="noOfTransactions ">Number of Transactions</label>	
 		<select name="targetAccountType" id="targetAccountType"> 
		    <option value="4">4</option>
		    <option value="3">3</option>  
		    <option value="2">2</option>  
		    <option value="1">1</option>  
  		</select> 
	</td> 	
</tr>
<tr>
	<td>
		<input type="submit" class="btn btn-primary" value="Submit">
	<td>
</tr>
</table>
</form>
</div>
</div>>
</div>



</body>
</html>