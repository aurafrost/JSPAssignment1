<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SimpleInt(jsp)</title>
</head>
<body>
<%
double amount=Double.parseDouble(request.getParameter("pamount"));
int years=Integer.parseInt(request.getParameter("years"));
double rate=Double.parseDouble(request.getParameter("rate"));
double interest=amount*(rate/100)*years;
out.println("Simple Interest: "+interest);
%>
</body>
</html>