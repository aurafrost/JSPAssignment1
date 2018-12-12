<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Store</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
String usr=request.getParameter("username").toString();
String pw=request.getParameter("password").toString();
if(usr!=null&&pw!=null){
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost","hr","hr");
	String query="insert into login(username,password) values(?,?)";
	PreparedStatement stmt=conn.prepareStatement(query);
	stmt.setString(1, usr);
	stmt.setString(2, pw);
	stmt.executeUpdate();
	conn.commit();
	conn.close();	
}
else{
	out.println("Empty field detected.");
}
out.print("Registration Done Successfully");
%>
</body>
</html>