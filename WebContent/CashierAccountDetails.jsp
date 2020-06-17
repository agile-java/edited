<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.mvc.bean.CashierCustomerBean" %>
<!DOCTYPE html>
<html>
<style>
.paddingBetweenCols td
{
    padding:0 40px;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Cashier Account Details Page</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>
<jsp:include page="masterPage.jsp" />
<% CashierCustomerBean cust=(CashierCustomerBean)session.getAttribute("customer");
String accountId = cust.getAccountId();
String depositURL = "ServletDepositMoney?accountId="+accountId;
String withdrawlURL = "ServletWithdrawlMoney?accountId="+accountId;
String transferURL = "ServletTransferMoney?accountId="+accountId;
String balance = Double.toString(cust.getBalance());
%>
<br><br>

<div class="container">
<div class="row justify-content-center">
<h2>Account Details</h2>
</div>
</div>
<div class="container">
<div class="row justify-content-center">
<table>
	<tr>
		<td>
			<table>
				<tr>
						<td>Customer Id</td>
						<td>:<%out.print(cust.getCustomerId()); %></td>
				</tr>
				<tr>
						<td>Customer SSN Id</td>
						<td>:<%out.print(cust.getSsnId()); %></td>
				</tr>
				
				<tr>
					<td>Customer Name</td>
					<td>:<%out.print(cust.getCustomerName()); %></td>
				</tr>
					
				<tr>
					<td>Account Id</td>
					<td>:<%out.print(accountId); %></td>
				</tr>
					
				<tr>
					<td>Account Type</td>
					<td>:<%out.print(cust.getAccountType()); %></td>
				</tr>
					
				<tr>
					<td>Account Balance</td>
					<td>:<%out.print(balance); %></td>
				</tr>
			</table>	
		</td>
	
		<td>
		</td>
	
		<td>
		</td>
		
		
		<td>
			<table>
				<tr>
					<td><a href="<%out.print(depositURL);%>">Deposit</a></td>
					</tr>

				<tr>
					<td><a href="<%out.print(withdrawlURL);%>">Withdrawl</a></td>
				</tr>

				<tr>
					<td><a href="<%out.print(transferURL);%>">Transfer</a></td>
				</tr>
				<tr>
					<td><a href="CashierAccountStatement.jsp">Account Statements</a></td>
				</tr>
	
			</table>

		</td>
	</tr>
</table>
</div>>
</div>
	
</body>
</html>