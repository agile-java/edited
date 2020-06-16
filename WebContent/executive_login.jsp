<html>
    <head>
        <title>Executive Login</title>
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
    
        <div class="container col-md-5 ">
        	<form action="Exe_loginServlet" method="post">
  		<div class="card ">
	        	<div class="card-header text-left font-weight-bold">
	        		Login
	        	</div>
	        	<div class="card-body">
	        		 
	                    <div class="form-group">
	                    	<input type="text" type="text" name="username" required class="form-control" placeholder="Executive Name"/>
	                    </div>
	                	<div class="form-group">
	                		<input type="password" name="password" required class="form-control" placeholder="Password"/>
	                	</div>
	        		
	        	</div>
	        	<div class="card-footer text-center">
	        		<input type="submit" value="Login" class="btn btn-primary"/>
	        	</div>
       		</div>
        	</form>
        	<a href="index.jsp"><< Back To Home</a><br /><br>
        	
        </div>
    </body>
</html>





