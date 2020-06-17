<%@page import="com.mvc.bean.Customerstatus"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.mvc.bean.AccountstatusBean" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CUSTOMER STATUS</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>
<jsp:include page="masterPage.jsp" />
<% ArrayList<AccountstatusBean> acc=(ArrayList<AccountstatusBean>)session.getAttribute("accountstatus");

%>

<br><br>

<div class="container">
<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">
<form>

<div class="row justify-content-center">
 <div class="col-auto">
<table class="table table-bordered">

<caption>Account Status</caption>
<thead>
<tr>
<th scope="col">Customer Id</th>
<th scope="col">Account Id</th>
<th scope="col">Account type</th>
<th scope="col">status</th>
<th scope="col">message</th>
<th scope="col">Last Update</th>

</tr>
</thead>

<%for (int i=0; i<acc.size(); i++){ %>
              <tr> <td><%out.print(acc.get(i).getCustomerid()); %></td>
               <td><%out.print(acc.get(i).getAccount_id()); %></td>
               <td><%out.print(acc.get(i).getAccounttype()); %></td>
               <td><%out.print(acc.get(i).getStatus()); %></td>
               <td><%out.print(acc.get(i).getMessage()); %></td>
               <td><%out.print(acc.get(i).getLast_update()); %></td>
               </tr>
           <%} %>

</table>
</div>
</div>
<h3><a href="home.jsp">back to home</a></h3>
</form>
</div>
</div>
</div>
</body>
</html>


