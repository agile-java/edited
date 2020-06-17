<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Withdraw Money</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>
<jsp:include page="masterPage.jsp" />
 <%@ page import="com.mvc.bean.WithdrawlMoneyBean,com.mvc.dao.WithdrawlMoneyDao,
 javax.xml.parsers.*,javax.xml.transform.*, 
 javax.xml.transform.dom.*,
 javax.xml.transform.stream.*,
 javax.xml.*,org.w3c.dom.*"
 %>
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
 
 <br>
 
  <div class="container">
<div class="row justify-content-center">
    
 
<h2 class="tableHead" >Withdrawl Money</h2>
</div>
</div>
<div class="container">
<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">
<form method="POST" action="${pageContext.request.contextPath}/ServletWithdrawlMoney"> 
<table>
  <tr>
    <td>Customer ID</td>
     <td>:</td>
    <td>${objWithdrawlMoneyBean.getCustomerId()}</td>
  </tr>
  <tr>
    <td>Account ID</td>
     <td>:</td>
    <td>${objWithdrawlMoneyBean.getAccountId()}</td>
  </tr>
   <tr>
    <td>Account Type</td>
     <td>:</td>
    <td>${objWithdrawlMoneyBean.getAccountType()}</td>
  </tr>
   <tr>
    <td>Balance</td>
     <td>:</td>
     <td>${objWithdrawlMoneyBean.getBalance()}</td>
    
  </tr>
</table> 

<p id="withdrawlMoneyPara">
 <label for="withdrawlMoney">Withdrawl Money </label>
 <input type="number" id="withdrawlMoney" name="withdrawlMoney" Class="form-control" placeholder="Enter Money" step="0.01" min="100" max="100000">
 </br>
 </br>
</p>
 <div class="container">
<div class="row justify-content-center">
    
<p id="submission">
<input type="submit" value="Submit">
</p>
</div>
</div>
<input type="hidden" name="accountId" value="${objWithdrawlMoneyBean.getAccountId()}"/>
<input type="hidden" name="balance" value="${objWithdrawlMoneyBean.getBalance()}"/>
<input type="hidden" name="customerId" value="${objWithdrawlMoneyBean.getCustomerId()}"/>
 </form>
</div>
</div>
</div>
  
 
 
  
    
</body>
</html>