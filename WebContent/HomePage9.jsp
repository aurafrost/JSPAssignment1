<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<h1>Home Page</h1>
<%
String usr=request.getParameter("username"); 
String pw=request.getParameter("password"); 
session.setAttribute("username",usr);
session.setAttribute("password",pw);

out.print("Username: "+session.getAttribute("username"));
%>
</body>
</html>