<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transfer Money</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>
<jsp:include page="masterPage.jsp" />
 <%@ page import="com.mvc.bean.TransferMoneyBean,com.mvc.dao.TransferMoneyDao,
 javax.xml.parsers.*,javax.xml.transform.*, 
 javax.xml.transform.dom.*,
 javax.xml.transform.stream.*,
 javax.xml.*,org.w3c.dom.*"
 %>
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
 


    <div class="container">
<div class="row justify-content-center">
    
<h2 class="tableHead" >Transfer Money</h2>
</div>
</div>
<div class="container">
<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">
<form method="POST" action="${pageContext.request.contextPath}/ServletTransferMoney">  

<table>

 <tr>
 	<td>
 		<label for="sourceCustomerId">Customer ID </label></td> 
 	<td>	
<input type="number" Class="form-control" id="sourceCustomerId" name="sourceCustomerId" value="${objTransferMoneyBean.getSourceCustomerId()}" disabled> 
	</td> 	
</tr>

<tr>
 	<td>
 		<label for="sourceAccountId">Source Account Id</label>

 	<td>	
 	
  		<input type="number" Class="form-control" id="sourceAccountId" name="sourceAccountId" value="${objTransferMoneyBean.getSourceAccountId()}" disabled> 
	</td> 	
</tr>

<tr>
 	<td>
 		<label for="targetAccountId">Target Account Id</label>

 	<td>	
 		
  <input type="number" Class="form-control" id="targetAccountId" name="targetAccountId" >
	</td> 	
</tr>

/*<tr>
	<td>
		<label for="transferMoney">Transfer Amount  </label>
	</td>
	<td>
		<input type="number" Class="form-control" id="transferMoney" name="transferMoney" placeholder="Enter Amount" step="0.01" min="100" max="100000">
	</td>
</tr>
</table>

<input type="hidden" name="sourceAccountId" value="${objTransferMoneyBean.getSourceAccountId()}"/>
<input type="hidden" name="targetAccountId" value="${objTransferMoneyBean.getTargetAccountId()}"/>
<input type="hidden" name="sourceCustomerId" value="${objTransferMoneyBean.getSourceCustomerId()}"/> 
<input type="hidden" name="transferMoney" value="${objTransferMoneyBean.getTransferMoney()}"/>
<br>
<div class="container">
<div class="row justify-content-center"> 
<p id="submission">
<input type="submit" class="btn btn-primary" value="Submit">
</p>
</div>
</div>


 </form>
 </div>
 </div>
 </div>

 
 
</body>
</html>