<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">EXECUTIVE LOGIN LOGIN</h2>

<form action="Exe_loginServlet" method="post">
<table>

<tr>
<td>Enter Username</td>
<td><input type="text" name="username" /></td>
</tr>

<tr>
<td>Enter Password</td>
<td><input type="password" name="password" /></td>
</tr>

<tr>
<td><input type="submit" /></td>
<td><input type="reset" /></td>
</tr>

</table>
</form>


</body>
</html>

Exe_loginServlet