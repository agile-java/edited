<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>search customer</title>
    </head>
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <body>
    <jsp:include page="masterPage.jsp" />
           <%
        String userName=(String)session.getAttribute("username");
        
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
    
        <div class="container col-md-5 ">
        <form action="AccountSearch" class="needs-validation" method="post">
        	
  		<div class="card ">
	        	<div class="card-header text-left font-weight-bold">
	        		Account Search
	        	</div>
	        	<div class="card-body">
	        		 
	                    <div class="form-group">
	                    
	                    	<input type="text" name="accountid" class="form-control" placeholder="Account Id" />
	                    </div>
	                	
	        	</div>
	        	<div class="card-footer text-center">
	        		<input type="submit"  name="search" value="search" />
	        	</div>
       		</div>
        	</form>
        </div>
    </body>
</html>