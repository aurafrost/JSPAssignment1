<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginStore</title>
</head>
<body>
<% 
String usr=request.getParameter("username"); 
String pw=request.getParameter("password"); 
if(usr.equals("CGI")&&pw.equals("cgi123")){
	out.println("You are VALID User."+"<br>");
	out.println("Username: "+usr+"<br>");
	out.println("Password: "+pw);
}
else{
	out.println("You are INVALID User.");
}
%>

</body>
</html>