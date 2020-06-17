<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.mvc.bean.Account" %>
    <%@ page import="javax.servlet.*"%>  
    <%@ page import="javax.servlet.http.*"%>

    <% Account acc=(Account)session.getAttribute("Account");
    //HttpSession session2=request.getSession();
    //session2.setAttribute("Account", acc);
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search result</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>
<jsp:include page="masterPage.jsp" />

<br><br>
<div class="container">
<div class="row justify-content-center">
<h2>ACCOUNT DELETE SCREEN</h2>
</div>
</div>

<br>

<div class="container">
<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">
<form class="needs-validation"  action="AccountDeleteServlet" method="post">
<table>

<tr>
<td>Account Id</td>
<td>:<%out.print(acc.getAccountid()); %></td>
</tr>

<tr>
<td>Customer Id</td>
<td>:<%out.print(acc.getCustomerid()); %></td>
</tr>

<tr>
<td>Account Type</td>
<td>:<%out.print(acc.getAccounttype()); %></td>
</tr>

<tr>
<td>Balance</td>
<td>:<%out.print(acc.getBalance()); %></td>
</tr>

<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>


<tr>
<td><input type="submit" class="form-control btn btn-primary" value="confirm" ;"/></td>
<td><input type="button" class="form-control btn btn-primary" value="back" onclick="location.href='home.jsp';"/></td>
</tr>

</table>
</form>
</div>
</div>
</div>
</body>
</html>
