<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Problem 10</title>
</head>
<body>

<%
//Yeah. Couldn't get this working. Even finally fails.
try{
	response.sendRedirect("A.jsp");
}
catch(Exception e){
	
}
finally{
	response.sendRedirect("error.jsp");
}
%>
</body>
</html>