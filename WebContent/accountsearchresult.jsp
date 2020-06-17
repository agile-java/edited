<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.mvc.bean.Account" %>
    <%@ page import="javax.servlet.*"%>  
    <%@ page import="javax.servlet.http.*"%>

    <% Account acc=(Account)request.getAttribute("acbean1");
    session.setAttribute("Account", acc);
    %>
    
    <%if(acc!=null){ %>
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

<h3>ACCOUNT SEARCH RESULTS</h3>
</div>
</div>

<br>

<div class="container">
<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">
<form>


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
<td><input type="button" value="home" class="form-control btn btn-primary"  onclick="location.href='accountsearch.jsp';"/></td>
<td><input type="button" value="delete" class="form-control btn btn-primary" onclick="location.href='deleteaccount.jsp';"/></td>
</tr>

</table>
</form>
</div>
</div>
</div>
</body>
</html>
<%}else{%>
<%
response.sendRedirect("accountsearch.jsp");
}%>