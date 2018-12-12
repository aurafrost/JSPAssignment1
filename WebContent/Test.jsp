<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test</title>
</head>
<body>

<jsp:forward page="TestPage.jsp">
<jsp:param name="name" value="Joe" ></jsp:param>
</jsp:forward>
</body>
</html>