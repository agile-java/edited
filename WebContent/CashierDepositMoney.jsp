<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>





<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deposit Money</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>
<jsp:include page="masterPage.jsp" />
 <%@ page import=" javax.xml.parsers.*,javax.xml.transform.*, 
 javax.xml.transform.dom.*,
 javax.xml.transform.stream.*,
 javax.xml.*,org.w3c.dom.*"
 %>
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
    
<div class="container">
<div class="row justify-content-center"> 
<h2 class="tableHead" >Deposit Money</h2>
</div>
</div>

<div class="container">
<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">
<form method="POST" action="${pageContext.request.contextPath}/ServletDepositMoney">
<table class="table">
  <tr>
    	<td>Customer ID</td>
    	<td>:</td>
    	<td>${objDepositMoneyBean.getCustomerId()}</td>
  </tr>
  <tr>
    	<td>Account ID</td>
     	<td>:</td>
    	<td>${objDepositMoneyBean.getAccountId()}</td>
  </tr>
  <tr>
    	<td>Account Type</td>
     	<td>:</td>
   		<td>${objDepositMoneyBean.getAccountType()}</td>
  </tr>
  <tr>
  		<td>Balance</td>
     	<td>:</td>
     	<td>${objDepositMoneyBean.getBalance()}</td>
  </tr>
  
</table> 

<p id="depositAmountPara">
 	<label for="depositAmount">Deposit Amount  </label>
 <input type="number" id="depositAmount"  Class="form-control" name="depositAmount" placeholder="Enter Amount" step="0.01" min="100" max="100000">
 </br>
 </br>
</p>
<div class="container">
<div class="row justify-content-center"> 
<p id="submission">
<input type="submit" class="btn btn-primary" value="Submit">
</p>
</div>
</div>
<input type="hidden" name="accountId" value="${objDepositMoneyBean.getAccountId()}"/>
<input type="hidden" name="balance" value="${objDepositMoneyBean.getBalance()}"/>
<input type="hidden" name="customerId" value="${objDepositMoneyBean.getCustomerId()}"/>
 </form>
 <br><br>
</div>
</div>
</div>
</body>
</html>