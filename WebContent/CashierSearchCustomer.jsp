<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Customer</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>
<jsp:include page="masterPage.jsp" />
 <%
        String userName=(String)session.getAttribute("userName");
        
        //redirect user to home page if already logged in
        if(userName!=null){
            response.sendRedirect("EmployeeController?action=LIST");
        }
 
        String status=request.getParameter("status");
        
        if(status!=null){
        	if(status.equals("false")){
        		   out.print("Incorrect login details!");	           		
        	}
        	else{
        		out.print("Some error occurred!");
        	}
        }
        %>

     <br><br>
<div class="container col-md-6">
<div class="card">
<div class="card-body">
<form action="CashierCustomerSearchServlet" class="needs-validation"  method="post">


<div class="form-group">

<label >Enter SSN Id</label>
<input type="text" name="ssnid" class="form-control" />

</div>

<div class="form-group">
  <center>
    <h4><span class="badge badge-pill badge-primary">OR</span></h4>
    </center>
  </div>

<div class="form-group">
<label>Enter Customer Id</label>
<input type="text" class="form-control" name="customerid" />
</div>


<input type="submit" class="btn btn-primary"   name="search" value="search" />




</form>
<a href="index.jsp"><< Back To Home</a><br /><br>
</div>
</div>
</div>
</body>
</html>